
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct alx_hw {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;


 int ALX_STAD0 ;
 int ALX_STAD1 ;
 int alx_write_mem32 (struct alx_hw*,int ,int ) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int get_unaligned (int *) ;

void alx_set_macaddr(struct alx_hw *hw, const u8 *addr)
{
 u32 val;


 val = be32_to_cpu(get_unaligned((__be32 *)(addr + 2)));
 alx_write_mem32(hw, ALX_STAD0, val);
 val = be16_to_cpu(get_unaligned((__be16 *)addr));
 alx_write_mem32(hw, ALX_STAD1, val);
}
