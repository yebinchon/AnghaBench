
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_erp_master_mask {int bitmap; int * count; } ;


 int __set_bit (unsigned long,int ) ;

__attribute__((used)) static void
mlxsw_sp_acl_erp_master_mask_bit_set(unsigned long bit,
         struct mlxsw_sp_acl_erp_master_mask *mask)
{
 if (mask->count[bit]++ == 0)
  __set_bit(bit, mask->bitmap);
}
