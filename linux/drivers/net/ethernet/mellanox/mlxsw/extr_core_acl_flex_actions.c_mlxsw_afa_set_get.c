
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa_set {int ref_count; int ht_key; } ;
struct mlxsw_afa {int set_ht; } ;


 struct mlxsw_afa_set* ERR_PTR (int) ;
 int mlxsw_afa_set_ht_params ;
 int mlxsw_afa_set_put (struct mlxsw_afa*,struct mlxsw_afa_set*) ;
 int mlxsw_afa_set_share (struct mlxsw_afa*,struct mlxsw_afa_set*) ;
 struct mlxsw_afa_set* rhashtable_lookup_fast (int *,int *,int ) ;

__attribute__((used)) static struct mlxsw_afa_set *mlxsw_afa_set_get(struct mlxsw_afa *mlxsw_afa,
            struct mlxsw_afa_set *orig_set)
{
 struct mlxsw_afa_set *set;
 int err;





 set = rhashtable_lookup_fast(&mlxsw_afa->set_ht, &orig_set->ht_key,
         mlxsw_afa_set_ht_params);
 if (set) {
  set->ref_count++;
  mlxsw_afa_set_put(mlxsw_afa, orig_set);
 } else {
  set = orig_set;
  err = mlxsw_afa_set_share(mlxsw_afa, set);
  if (err)
   return ERR_PTR(err);
 }
 return set;
}
