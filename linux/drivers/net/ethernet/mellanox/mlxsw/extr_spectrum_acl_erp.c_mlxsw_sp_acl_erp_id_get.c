
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlxsw_sp_acl_erp_table {int erp_id_bitmap; } ;


 int ENOBUFS ;
 scalar_t__ MLXSW_SP_ACL_ERP_MAX_PER_REGION ;
 int __set_bit (scalar_t__,int ) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;

__attribute__((used)) static int mlxsw_sp_acl_erp_id_get(struct mlxsw_sp_acl_erp_table *erp_table,
       u8 *p_id)
{
 u8 id;

 id = find_first_zero_bit(erp_table->erp_id_bitmap,
     MLXSW_SP_ACL_ERP_MAX_PER_REGION);
 if (id < MLXSW_SP_ACL_ERP_MAX_PER_REGION) {
  __set_bit(id, erp_table->erp_id_bitmap);
  *p_id = id;
  return 0;
 }

 return -ENOBUFS;
}
