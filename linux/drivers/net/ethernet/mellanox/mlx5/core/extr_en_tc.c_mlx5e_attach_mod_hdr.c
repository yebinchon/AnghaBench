
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mod_hdr_tbl {int lock; int hlist; } ;
struct mod_hdr_key {int num_actions; int actions; } ;
struct mlx5e_tc_flow_parse_attr {int num_mod_hdr_actions; int mod_hdr_actions; } ;
struct mlx5e_tc_flow {TYPE_3__* nic_attr; TYPE_2__* esw_attr; int mod_hdr; struct mlx5e_mod_hdr_entry* mh; } ;
struct mlx5e_priv {int mdev; } ;
struct TYPE_4__ {int num_actions; void* actions; } ;
struct mlx5e_mod_hdr_entry {int compl_result; int res_ready; int modify_hdr; int flows_lock; int flows; TYPE_1__ key; int mod_hdr_hlist; int refcnt; } ;
struct TYPE_6__ {int modify_hdr; } ;
struct TYPE_5__ {int modify_hdr; } ;


 int ENOMEM ;
 int EREMOTEIO ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int MLX5_MH_ACT_SZ ;
 int PTR_ERR (int ) ;
 int complete_all (int *) ;
 int get_flow_name_space (struct mlx5e_tc_flow*) ;
 struct mod_hdr_tbl* get_mod_hdr_table (struct mlx5e_priv*,int) ;
 int hash_add (int ,int *,int ) ;
 int hash_mod_hdr_info (struct mod_hdr_key*) ;
 int init_completion (int *) ;
 struct mlx5e_mod_hdr_entry* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (void*,int ,int) ;
 int mlx5_modify_header_alloc (int ,int,int,void*) ;
 scalar_t__ mlx5e_is_eswitch_flow (struct mlx5e_tc_flow*) ;
 struct mlx5e_mod_hdr_entry* mlx5e_mod_hdr_get (struct mod_hdr_tbl*,struct mod_hdr_key*,int ) ;
 int mlx5e_mod_hdr_put (struct mlx5e_priv*,struct mlx5e_mod_hdr_entry*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_set (int *,int) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int mlx5e_attach_mod_hdr(struct mlx5e_priv *priv,
    struct mlx5e_tc_flow *flow,
    struct mlx5e_tc_flow_parse_attr *parse_attr)
{
 int num_actions, actions_size, namespace, err;
 struct mlx5e_mod_hdr_entry *mh;
 struct mod_hdr_tbl *tbl;
 struct mod_hdr_key key;
 u32 hash_key;

 num_actions = parse_attr->num_mod_hdr_actions;
 actions_size = MLX5_MH_ACT_SZ * num_actions;

 key.actions = parse_attr->mod_hdr_actions;
 key.num_actions = num_actions;

 hash_key = hash_mod_hdr_info(&key);

 namespace = get_flow_name_space(flow);
 tbl = get_mod_hdr_table(priv, namespace);

 mutex_lock(&tbl->lock);
 mh = mlx5e_mod_hdr_get(tbl, &key, hash_key);
 if (mh) {
  mutex_unlock(&tbl->lock);
  wait_for_completion(&mh->res_ready);

  if (mh->compl_result < 0) {
   err = -EREMOTEIO;
   goto attach_header_err;
  }
  goto attach_flow;
 }

 mh = kzalloc(sizeof(*mh) + actions_size, GFP_KERNEL);
 if (!mh) {
  mutex_unlock(&tbl->lock);
  return -ENOMEM;
 }

 mh->key.actions = (void *)mh + sizeof(*mh);
 memcpy(mh->key.actions, key.actions, actions_size);
 mh->key.num_actions = num_actions;
 spin_lock_init(&mh->flows_lock);
 INIT_LIST_HEAD(&mh->flows);
 refcount_set(&mh->refcnt, 1);
 init_completion(&mh->res_ready);

 hash_add(tbl->hlist, &mh->mod_hdr_hlist, hash_key);
 mutex_unlock(&tbl->lock);

 mh->modify_hdr = mlx5_modify_header_alloc(priv->mdev, namespace,
        mh->key.num_actions,
        mh->key.actions);
 if (IS_ERR(mh->modify_hdr)) {
  err = PTR_ERR(mh->modify_hdr);
  mh->compl_result = err;
  goto alloc_header_err;
 }
 mh->compl_result = 1;
 complete_all(&mh->res_ready);

attach_flow:
 flow->mh = mh;
 spin_lock(&mh->flows_lock);
 list_add(&flow->mod_hdr, &mh->flows);
 spin_unlock(&mh->flows_lock);
 if (mlx5e_is_eswitch_flow(flow))
  flow->esw_attr->modify_hdr = mh->modify_hdr;
 else
  flow->nic_attr->modify_hdr = mh->modify_hdr;

 return 0;

alloc_header_err:
 complete_all(&mh->res_ready);
attach_header_err:
 mlx5e_mod_hdr_put(priv, mh, namespace);
 return err;
}
