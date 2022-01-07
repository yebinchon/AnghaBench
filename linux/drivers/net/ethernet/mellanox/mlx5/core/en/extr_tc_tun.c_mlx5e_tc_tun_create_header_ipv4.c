
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct neighbour {int nud_state; int lock; int ha; TYPE_7__* tbl; int primary_key; TYPE_5__* ops; int dev; } ;
struct mlx5e_priv {int mdev; } ;
struct TYPE_13__ {int dst_ip; int family; int dev; } ;
struct mlx5e_encap_entry {int encap_size; char* encap_header; struct net_device* out_dev; int flags; int pkt_reformat; int reformat_type; int h_dest; struct net_device* route_dev; TYPE_6__ m_neigh; TYPE_4__* tunnel; TYPE_1__* tun_info; } ;
struct iphdr {int version; int ihl; int ttl; int protocol; int saddr; int daddr; int tos; } ;
struct TYPE_9__ {int src; int dst; } ;
struct TYPE_10__ {TYPE_2__ ipv4; } ;
struct ip_tunnel_key {int ttl; int tos; TYPE_3__ u; } ;
struct flowi4 {int saddr; int daddr; int flowi4_tos; } ;
struct TYPE_14__ {int key_len; } ;
struct TYPE_12__ {int family; } ;
struct TYPE_11__ {int (* calc_hlen ) (struct mlx5e_encap_entry*) ;} ;
struct TYPE_8__ {struct ip_tunnel_key key; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETH_HLEN ;
 int ETH_P_IP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MLX5_CAP_ESW (int ,int ) ;
 int MLX5_ENCAP_ENTRY_VALID ;
 int MLX5_FLOW_NAMESPACE_FDB ;
 int NUD_VALID ;
 int PTR_ERR (int ) ;
 int VLAN_ETH_HLEN ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ gen_eth_tnl_hdr (char*,struct net_device*,struct mlx5e_encap_entry*,int ) ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 int max_encap_header_size ;
 int memcpy (int *,int ,int ) ;
 int mlx5_core_warn (int ,char*,int,int) ;
 int mlx5_packet_reformat_alloc (int ,int ,int,char*,int ) ;
 int mlx5e_gen_ip_tunnel_header (char*,int *,struct mlx5e_encap_entry*) ;
 int mlx5e_rep_encap_entry_attach (int ,struct mlx5e_encap_entry*) ;
 int mlx5e_rep_encap_entry_detach (int ,struct mlx5e_encap_entry*) ;
 int mlx5e_rep_queue_neigh_stats_work (int ) ;
 int mlx5e_route_lookup_ipv4 (struct mlx5e_priv*,struct net_device*,struct net_device**,struct net_device**,struct flowi4*,struct neighbour**,int*) ;
 int neigh_event_send (struct neighbour*,int *) ;
 int neigh_release (struct neighbour*) ;
 int netdev_priv (struct net_device*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int stub1 (struct mlx5e_encap_entry*) ;

int mlx5e_tc_tun_create_header_ipv4(struct mlx5e_priv *priv,
        struct net_device *mirred_dev,
        struct mlx5e_encap_entry *e)
{
 int max_encap_size = MLX5_CAP_ESW(priv->mdev, max_encap_header_size);
 const struct ip_tunnel_key *tun_key = &e->tun_info->key;
 struct net_device *out_dev, *route_dev;
 struct neighbour *n = ((void*)0);
 struct flowi4 fl4 = {};
 int ipv4_encap_size;
 char *encap_header;
 u8 nud_state, ttl;
 struct iphdr *ip;
 int err;


 fl4.flowi4_tos = tun_key->tos;
 fl4.daddr = tun_key->u.ipv4.dst;
 fl4.saddr = tun_key->u.ipv4.src;
 ttl = tun_key->ttl;

 err = mlx5e_route_lookup_ipv4(priv, mirred_dev, &out_dev, &route_dev,
          &fl4, &n, &ttl);
 if (err)
  return err;

 ipv4_encap_size =
  (is_vlan_dev(route_dev) ? VLAN_ETH_HLEN : ETH_HLEN) +
  sizeof(struct iphdr) +
  e->tunnel->calc_hlen(e);

 if (max_encap_size < ipv4_encap_size) {
  mlx5_core_warn(priv->mdev, "encap size %d too big, max supported is %d\n",
          ipv4_encap_size, max_encap_size);
  return -EOPNOTSUPP;
 }

 encap_header = kzalloc(ipv4_encap_size, GFP_KERNEL);
 if (!encap_header)
  return -ENOMEM;




 e->m_neigh.dev = n->dev;
 e->m_neigh.family = n->ops->family;
 memcpy(&e->m_neigh.dst_ip, n->primary_key, n->tbl->key_len);
 e->out_dev = out_dev;
 e->route_dev = route_dev;






 err = mlx5e_rep_encap_entry_attach(netdev_priv(out_dev), e);
 if (err)
  goto free_encap;

 read_lock_bh(&n->lock);
 nud_state = n->nud_state;
 ether_addr_copy(e->h_dest, n->ha);
 read_unlock_bh(&n->lock);


 ip = (struct iphdr *)gen_eth_tnl_hdr(encap_header, route_dev, e,
          ETH_P_IP);


 ip->tos = tun_key->tos;
 ip->version = 0x4;
 ip->ihl = 0x5;
 ip->ttl = ttl;
 ip->daddr = fl4.daddr;
 ip->saddr = fl4.saddr;


 err = mlx5e_gen_ip_tunnel_header((char *)ip + sizeof(struct iphdr),
      &ip->protocol, e);
 if (err)
  goto destroy_neigh_entry;

 e->encap_size = ipv4_encap_size;
 e->encap_header = encap_header;

 if (!(nud_state & NUD_VALID)) {
  neigh_event_send(n, ((void*)0));



  goto out;
 }
 e->pkt_reformat = mlx5_packet_reformat_alloc(priv->mdev,
           e->reformat_type,
           ipv4_encap_size, encap_header,
           MLX5_FLOW_NAMESPACE_FDB);
 if (IS_ERR(e->pkt_reformat)) {
  err = PTR_ERR(e->pkt_reformat);
  goto destroy_neigh_entry;
 }

 e->flags |= MLX5_ENCAP_ENTRY_VALID;
 mlx5e_rep_queue_neigh_stats_work(netdev_priv(out_dev));
 neigh_release(n);
 return err;

destroy_neigh_entry:
 mlx5e_rep_encap_entry_detach(netdev_priv(e->out_dev), e);
free_encap:
 kfree(encap_header);
out:
 if (n)
  neigh_release(n);
 return err;
}
