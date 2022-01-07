
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_block {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct flow_cls_offload {int command; } ;


 int EOPNOTSUPP ;





 struct mlxsw_sp* mlxsw_sp_acl_block_mlxsw_sp (struct mlxsw_sp_acl_block*) ;
 int mlxsw_sp_flower_destroy (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct flow_cls_offload*) ;
 int mlxsw_sp_flower_replace (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct flow_cls_offload*) ;
 int mlxsw_sp_flower_stats (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct flow_cls_offload*) ;
 int mlxsw_sp_flower_tmplt_create (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct flow_cls_offload*) ;
 int mlxsw_sp_flower_tmplt_destroy (struct mlxsw_sp*,struct mlxsw_sp_acl_block*,struct flow_cls_offload*) ;

__attribute__((used)) static int
mlxsw_sp_setup_tc_cls_flower(struct mlxsw_sp_acl_block *acl_block,
        struct flow_cls_offload *f)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_acl_block_mlxsw_sp(acl_block);

 switch (f->command) {
 case 131:
  return mlxsw_sp_flower_replace(mlxsw_sp, acl_block, f);
 case 132:
  mlxsw_sp_flower_destroy(mlxsw_sp, acl_block, f);
  return 0;
 case 130:
  return mlxsw_sp_flower_stats(mlxsw_sp, acl_block, f);
 case 129:
  return mlxsw_sp_flower_tmplt_create(mlxsw_sp, acl_block, f);
 case 128:
  mlxsw_sp_flower_tmplt_destroy(mlxsw_sp, acl_block, f);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
