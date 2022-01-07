
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef unsigned char u16 ;
struct mlxsw_sp_acl_erp_key {scalar_t__* mask; } ;


 int EINVAL ;
 size_t __MASK_IDX (int) ;
 int __MASK_LEN ;

__attribute__((used)) static int
mlxsw_sp_acl_erp_delta_fill(const struct mlxsw_sp_acl_erp_key *parent_key,
       const struct mlxsw_sp_acl_erp_key *key,
       u16 *delta_start, u8 *delta_mask)
{
 int offset = 0;
 int si = -1;
 u16 pmask;
 u16 mask;
 int i;


 for (i = 0; i < __MASK_LEN; i++) {
  if (parent_key->mask[__MASK_IDX(i)] == key->mask[__MASK_IDX(i)])
   continue;
  if (si == -1)
   si = i;
  else if (si != i - 1)
   return -EINVAL;
 }
 if (si == -1) {





  return -EINVAL;
 }
 pmask = (unsigned char) parent_key->mask[__MASK_IDX(si)];
 mask = (unsigned char) key->mask[__MASK_IDX(si)];
 if (si + 1 < __MASK_LEN) {
  pmask |= (unsigned char) parent_key->mask[__MASK_IDX(si + 1)] << 8;
  mask |= (unsigned char) key->mask[__MASK_IDX(si + 1)] << 8;
 }

 if ((pmask ^ mask) & pmask)
  return -EINVAL;
 mask &= ~pmask;
 while (!(mask & (1 << offset)))
  offset++;
 while (!(mask & 1))
  mask >>= 1;
 if (mask & 0xff00)
  return -EINVAL;

 *delta_start = si * 8 + offset;
 *delta_mask = mask;

 return 0;
}
