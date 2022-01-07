
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_tc_flow_parse_attr {struct mlx5e_encap_entry** tun_info; } ;
struct mlx5e_tc_flow {TYPE_3__* encaps; struct mlx5_esw_flow_attr* esw_attr; } ;
struct mlx5e_priv {TYPE_2__* mdev; } ;
typedef struct mlx5e_encap_entry {int compl_result; int flags; int pkt_reformat; struct net_device* out_dev; int flows; int res_ready; int encap_hlist; struct mlx5e_encap_entry const* tun_info; int refcnt; int key; } const mlx5e_encap_entry ;
struct TYPE_10__ {int encap_tbl_lock; int encap_tbl; } ;
struct mlx5_eswitch {TYPE_5__ offloads; } ;
struct mlx5_esw_flow_attr {TYPE_4__* dests; struct mlx5e_tc_flow_parse_attr* parse_attr; } ;
struct ip_tunnel_info {int compl_result; int flags; int pkt_reformat; struct net_device* out_dev; int flows; int res_ready; int encap_hlist; struct ip_tunnel_info const* tun_info; int refcnt; int key; } ;
struct encap_key {int tc_tunnel; int * ip_tun_key; } ;
struct TYPE_9__ {int flags; int pkt_reformat; } ;
struct TYPE_8__ {int index; int list; struct mlx5e_encap_entry const* e; } ;
struct TYPE_6__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_7__ {TYPE_1__ priv; } ;


 unsigned short AF_INET ;
 unsigned short AF_INET6 ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EREMOTEIO ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MLX5_ENCAP_ENTRY_VALID ;
 int MLX5_ESW_DEST_ENCAP_VALID ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int complete_all (int *) ;
 struct mlx5e_encap_entry* dup_tun_info (struct mlx5e_encap_entry const*) ;
 int hash_add_rcu (int ,int *,uintptr_t) ;
 uintptr_t hash_encap_info (struct encap_key*) ;
 int init_completion (int *) ;
 unsigned short ip_tunnel_info_af (struct mlx5e_encap_entry const*) ;
 int kfree (struct mlx5e_encap_entry const*) ;
 struct mlx5e_encap_entry* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct mlx5e_encap_entry* mlx5e_encap_get (struct mlx5e_priv*,struct encap_key*,uintptr_t) ;
 int mlx5e_encap_put (struct mlx5e_priv*,struct mlx5e_encap_entry const*) ;
 int mlx5e_get_tc_tun (struct net_device*) ;
 int mlx5e_tc_tun_create_header_ipv4 (struct mlx5e_priv*,struct net_device*,struct mlx5e_encap_entry const*) ;
 int mlx5e_tc_tun_create_header_ipv6 (struct mlx5e_priv*,struct net_device*,struct mlx5e_encap_entry const*) ;
 int mlx5e_tc_tun_init_encap_attr (struct net_device*,struct mlx5e_priv*,struct mlx5e_encap_entry const*,struct netlink_ext_ack*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_set (int *,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int mlx5e_attach_encap(struct mlx5e_priv *priv,
         struct mlx5e_tc_flow *flow,
         struct net_device *mirred_dev,
         int out_index,
         struct netlink_ext_ack *extack,
         struct net_device **encap_dev,
         bool *encap_valid)
{
 struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;
 struct mlx5_esw_flow_attr *attr = flow->esw_attr;
 struct mlx5e_tc_flow_parse_attr *parse_attr;
 const struct ip_tunnel_info *tun_info;
 struct encap_key key;
 struct mlx5e_encap_entry *e;
 unsigned short family;
 uintptr_t hash_key;
 int err = 0;

 parse_attr = attr->parse_attr;
 tun_info = parse_attr->tun_info[out_index];
 family = ip_tunnel_info_af(tun_info);
 key.ip_tun_key = &tun_info->key;
 key.tc_tunnel = mlx5e_get_tc_tun(mirred_dev);
 if (!key.tc_tunnel) {
  NL_SET_ERR_MSG_MOD(extack, "Unsupported tunnel");
  return -EOPNOTSUPP;
 }

 hash_key = hash_encap_info(&key);

 mutex_lock(&esw->offloads.encap_tbl_lock);
 e = mlx5e_encap_get(priv, &key, hash_key);


 if (e) {
  mutex_unlock(&esw->offloads.encap_tbl_lock);
  wait_for_completion(&e->res_ready);


  mutex_lock(&esw->offloads.encap_tbl_lock);
  if (e->compl_result < 0) {
   err = -EREMOTEIO;
   goto out_err;
  }
  goto attach_flow;
 }

 e = kzalloc(sizeof(*e), GFP_KERNEL);
 if (!e) {
  err = -ENOMEM;
  goto out_err;
 }

 refcount_set(&e->refcnt, 1);
 init_completion(&e->res_ready);

 tun_info = dup_tun_info(tun_info);
 if (!tun_info) {
  err = -ENOMEM;
  goto out_err_init;
 }
 e->tun_info = tun_info;
 err = mlx5e_tc_tun_init_encap_attr(mirred_dev, priv, e, extack);
 if (err)
  goto out_err_init;

 INIT_LIST_HEAD(&e->flows);
 hash_add_rcu(esw->offloads.encap_tbl, &e->encap_hlist, hash_key);
 mutex_unlock(&esw->offloads.encap_tbl_lock);

 if (family == AF_INET)
  err = mlx5e_tc_tun_create_header_ipv4(priv, mirred_dev, e);
 else if (family == AF_INET6)
  err = mlx5e_tc_tun_create_header_ipv6(priv, mirred_dev, e);


 mutex_lock(&esw->offloads.encap_tbl_lock);
 complete_all(&e->res_ready);
 if (err) {
  e->compl_result = err;
  goto out_err;
 }
 e->compl_result = 1;

attach_flow:
 flow->encaps[out_index].e = e;
 list_add(&flow->encaps[out_index].list, &e->flows);
 flow->encaps[out_index].index = out_index;
 *encap_dev = e->out_dev;
 if (e->flags & MLX5_ENCAP_ENTRY_VALID) {
  attr->dests[out_index].pkt_reformat = e->pkt_reformat;
  attr->dests[out_index].flags |= MLX5_ESW_DEST_ENCAP_VALID;
  *encap_valid = 1;
 } else {
  *encap_valid = 0;
 }
 mutex_unlock(&esw->offloads.encap_tbl_lock);

 return err;

out_err:
 mutex_unlock(&esw->offloads.encap_tbl_lock);
 if (e)
  mlx5e_encap_put(priv, e);
 return err;

out_err_init:
 mutex_unlock(&esw->offloads.encap_tbl_lock);
 kfree(tun_info);
 kfree(e);
 return err;
}
