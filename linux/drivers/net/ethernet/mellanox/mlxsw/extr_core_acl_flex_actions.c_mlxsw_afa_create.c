
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa_ops {int dummy; } ;
struct mlxsw_afa {unsigned int max_acts_per_set; int set_ht; void* ops_priv; struct mlxsw_afa_ops const* ops; int fwd_entry_ht; } ;


 int ENOMEM ;
 struct mlxsw_afa* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct mlxsw_afa*) ;
 struct mlxsw_afa* kzalloc (int,int ) ;
 int mlxsw_afa_fwd_entry_ht_params ;
 int mlxsw_afa_set_ht_params ;
 int rhashtable_destroy (int *) ;
 int rhashtable_init (int *,int *) ;

struct mlxsw_afa *mlxsw_afa_create(unsigned int max_acts_per_set,
       const struct mlxsw_afa_ops *ops,
       void *ops_priv)
{
 struct mlxsw_afa *mlxsw_afa;
 int err;

 mlxsw_afa = kzalloc(sizeof(*mlxsw_afa), GFP_KERNEL);
 if (!mlxsw_afa)
  return ERR_PTR(-ENOMEM);
 err = rhashtable_init(&mlxsw_afa->set_ht, &mlxsw_afa_set_ht_params);
 if (err)
  goto err_set_rhashtable_init;
 err = rhashtable_init(&mlxsw_afa->fwd_entry_ht,
         &mlxsw_afa_fwd_entry_ht_params);
 if (err)
  goto err_fwd_entry_rhashtable_init;
 mlxsw_afa->max_acts_per_set = max_acts_per_set;
 mlxsw_afa->ops = ops;
 mlxsw_afa->ops_priv = ops_priv;
 return mlxsw_afa;

err_fwd_entry_rhashtable_init:
 rhashtable_destroy(&mlxsw_afa->set_ht);
err_set_rhashtable_init:
 kfree(mlxsw_afa);
 return ERR_PTR(err);
}
