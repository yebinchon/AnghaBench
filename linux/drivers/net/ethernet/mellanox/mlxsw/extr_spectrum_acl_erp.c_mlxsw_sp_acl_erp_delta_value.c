
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlxsw_sp_acl_erp_delta {int start; int mask; } ;


 size_t __MASK_IDX (int) ;
 int __MASK_LEN ;

u8 mlxsw_sp_acl_erp_delta_value(const struct mlxsw_sp_acl_erp_delta *delta,
    const char *enc_key)
{
 u16 start = delta->start;
 u8 mask = delta->mask;
 u16 tmp;

 if (!mask)
  return 0;

 tmp = (unsigned char) enc_key[__MASK_IDX(start / 8)];
 if (start / 8 + 1 < __MASK_LEN)
  tmp |= (unsigned char) enc_key[__MASK_IDX(start / 8 + 1)] << 8;
 tmp >>= start % 8;
 tmp &= mask;
 return tmp;
}
