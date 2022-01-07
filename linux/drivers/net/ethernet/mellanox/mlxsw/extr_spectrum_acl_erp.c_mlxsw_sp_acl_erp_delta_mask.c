
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sp_acl_erp_delta {int mask; } ;



u8 mlxsw_sp_acl_erp_delta_mask(const struct mlxsw_sp_acl_erp_delta *delta)
{
 return delta->mask;
}
