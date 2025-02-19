
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlxsw_sp_vr {int dummy; } ;
struct mlxsw_sp_lpm_tree {int prefix_ref_count; int id; } ;
struct mlxsw_sp_fib {int proto; } ;
struct mlxsw_sp {TYPE_2__* router; int core; } ;
typedef enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
struct TYPE_3__ {struct mlxsw_sp_lpm_tree** proto_trees; } ;
struct TYPE_4__ {TYPE_1__ lpm; struct mlxsw_sp_vr* vrs; } ;


 int MAX_VRS ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 int memcpy (int ,int ,int) ;
 int mlxsw_sp_lpm_tree_put (struct mlxsw_sp*,struct mlxsw_sp_lpm_tree*) ;
 int mlxsw_sp_vr_fib (struct mlxsw_sp_vr*,int) ;
 int mlxsw_sp_vr_lpm_tree_replace (struct mlxsw_sp*,int ,struct mlxsw_sp_lpm_tree*) ;
 int mlxsw_sp_vr_lpm_tree_should_replace (struct mlxsw_sp_vr*,int,int ) ;

__attribute__((used)) static int mlxsw_sp_vrs_lpm_tree_replace(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_fib *fib,
      struct mlxsw_sp_lpm_tree *new_tree)
{
 enum mlxsw_sp_l3proto proto = fib->proto;
 struct mlxsw_sp_lpm_tree *old_tree;
 u8 old_id, new_id = new_tree->id;
 struct mlxsw_sp_vr *vr;
 int i, err;

 old_tree = mlxsw_sp->router->lpm.proto_trees[proto];
 old_id = old_tree->id;

 for (i = 0; i < MLXSW_CORE_RES_GET(mlxsw_sp->core, MAX_VRS); i++) {
  vr = &mlxsw_sp->router->vrs[i];
  if (!mlxsw_sp_vr_lpm_tree_should_replace(vr, proto, old_id))
   continue;
  err = mlxsw_sp_vr_lpm_tree_replace(mlxsw_sp,
         mlxsw_sp_vr_fib(vr, proto),
         new_tree);
  if (err)
   goto err_tree_replace;
 }

 memcpy(new_tree->prefix_ref_count, old_tree->prefix_ref_count,
        sizeof(new_tree->prefix_ref_count));
 mlxsw_sp->router->lpm.proto_trees[proto] = new_tree;
 mlxsw_sp_lpm_tree_put(mlxsw_sp, old_tree);

 return 0;

err_tree_replace:
 for (i--; i >= 0; i--) {
  if (!mlxsw_sp_vr_lpm_tree_should_replace(vr, proto, new_id))
   continue;
  mlxsw_sp_vr_lpm_tree_replace(mlxsw_sp,
          mlxsw_sp_vr_fib(vr, proto),
          old_tree);
 }
 return err;
}
