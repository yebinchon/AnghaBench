
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nve_mc_list_key {int dummy; } ;
struct mlxsw_sp_nve_mc_list {int ht_node; struct mlxsw_sp_nve_mc_list_key key; int records_list; } ;
struct mlxsw_sp_nve {int mc_list_ht; } ;
struct mlxsw_sp {struct mlxsw_sp_nve* nve; } ;


 int ENOMEM ;
 struct mlxsw_sp_nve_mc_list* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct mlxsw_sp_nve_mc_list*) ;
 struct mlxsw_sp_nve_mc_list* kmalloc (int,int ) ;
 int mlxsw_sp_nve_mc_list_ht_params ;
 int rhashtable_insert_fast (int *,int *,int ) ;

__attribute__((used)) static struct mlxsw_sp_nve_mc_list *
mlxsw_sp_nve_mc_list_create(struct mlxsw_sp *mlxsw_sp,
       const struct mlxsw_sp_nve_mc_list_key *key)
{
 struct mlxsw_sp_nve *nve = mlxsw_sp->nve;
 struct mlxsw_sp_nve_mc_list *mc_list;
 int err;

 mc_list = kmalloc(sizeof(*mc_list), GFP_KERNEL);
 if (!mc_list)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&mc_list->records_list);
 mc_list->key = *key;

 err = rhashtable_insert_fast(&nve->mc_list_ht, &mc_list->ht_node,
         mlxsw_sp_nve_mc_list_ht_params);
 if (err)
  goto err_rhashtable_insert;

 return mc_list;

err_rhashtable_insert:
 kfree(mc_list);
 return ERR_PTR(err);
}
