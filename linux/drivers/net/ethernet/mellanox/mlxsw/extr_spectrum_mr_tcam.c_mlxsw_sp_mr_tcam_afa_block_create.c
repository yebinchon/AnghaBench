
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp_mr_tcam_erif_list {int kvdl_index; } ;
struct mlxsw_sp {int afa; } ;
struct mlxsw_afa_block {int dummy; } ;
typedef enum mlxsw_sp_mr_route_action { ____Placeholder_mlxsw_sp_mr_route_action } mlxsw_sp_mr_route_action ;


 int EINVAL ;
 int ENOMEM ;
 struct mlxsw_afa_block* ERR_PTR (int) ;



 int MLXSW_TRAP_ID_ACL1 ;
 int MLXSW_TRAP_ID_ACL2 ;
 int mlxsw_afa_block_append_allocated_counter (struct mlxsw_afa_block*,int ) ;
 int mlxsw_afa_block_append_mcrouter (struct mlxsw_afa_block*,int ,int ,int,int ) ;
 int mlxsw_afa_block_append_trap (struct mlxsw_afa_block*,int ) ;
 int mlxsw_afa_block_append_trap_and_forward (struct mlxsw_afa_block*,int ) ;
 int mlxsw_afa_block_commit (struct mlxsw_afa_block*) ;
 struct mlxsw_afa_block* mlxsw_afa_block_create (int ) ;
 int mlxsw_afa_block_destroy (struct mlxsw_afa_block*) ;
 int mlxsw_sp_mr_erif_list_commit (struct mlxsw_sp*,struct mlxsw_sp_mr_tcam_erif_list*) ;

__attribute__((used)) static struct mlxsw_afa_block *
mlxsw_sp_mr_tcam_afa_block_create(struct mlxsw_sp *mlxsw_sp,
      enum mlxsw_sp_mr_route_action route_action,
      u16 irif_index, u32 counter_index,
      u16 min_mtu,
      struct mlxsw_sp_mr_tcam_erif_list *erif_list)
{
 struct mlxsw_afa_block *afa_block;
 int err;

 afa_block = mlxsw_afa_block_create(mlxsw_sp->afa);
 if (!afa_block)
  return ERR_PTR(-ENOMEM);

 err = mlxsw_afa_block_append_allocated_counter(afa_block,
             counter_index);
 if (err)
  goto err;

 switch (route_action) {
 case 129:
  err = mlxsw_afa_block_append_trap(afa_block,
        MLXSW_TRAP_ID_ACL1);
  if (err)
   goto err;
  break;
 case 128:
 case 130:



  err = mlxsw_sp_mr_erif_list_commit(mlxsw_sp, erif_list);
  if (err)
   goto err;

  err = mlxsw_afa_block_append_mcrouter(afa_block, irif_index,
            min_mtu, 0,
            erif_list->kvdl_index);
  if (err)
   goto err;

  if (route_action == 128) {
   err = mlxsw_afa_block_append_trap_and_forward(afa_block,
              MLXSW_TRAP_ID_ACL2);
   if (err)
    goto err;
  }
  break;
 default:
  err = -EINVAL;
  goto err;
 }

 err = mlxsw_afa_block_commit(afa_block);
 if (err)
  goto err;
 return afa_block;
err:
 mlxsw_afa_block_destroy(afa_block);
 return ERR_PTR(err);
}
