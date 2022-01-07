
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_block {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;


 int mlxsw_sp_acl_block_disabled (struct mlxsw_sp_acl_block*) ;
 int mlxsw_sp_setup_tc_cls_flower (struct mlxsw_sp_acl_block*,void*) ;

__attribute__((used)) static int mlxsw_sp_setup_tc_block_cb_flower(enum tc_setup_type type,
          void *type_data, void *cb_priv)
{
 struct mlxsw_sp_acl_block *acl_block = cb_priv;

 switch (type) {
 case 128:
  return 0;
 case 129:
  if (mlxsw_sp_acl_block_disabled(acl_block))
   return -EOPNOTSUPP;

  return mlxsw_sp_setup_tc_cls_flower(acl_block, type_data);
 default:
  return -EOPNOTSUPP;
 }
}
