
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlxsw_sp_acl_erp_table {scalar_t__ num_max_atcam_erps; int erp_index_bitmap; } ;


 int ENOBUFS ;
 int __set_bit (scalar_t__,int ) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;

__attribute__((used)) static int mlxsw_sp_acl_erp_index_get(struct mlxsw_sp_acl_erp_table *erp_table,
          u8 *p_index)
{
 u8 index;

 index = find_first_zero_bit(erp_table->erp_index_bitmap,
        erp_table->num_max_atcam_erps);
 if (index < erp_table->num_max_atcam_erps) {
  __set_bit(index, erp_table->erp_index_bitmap);
  *p_index = index;
  return 0;
 }

 return -ENOBUFS;
}
