
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alx_hw {int dummy; } ;


 int ALX_RXQ0 ;
 int ALX_RXQ0_RSS_HASH_EN ;
 int alx_read_mem32 (struct alx_hw*,int ) ;
 int alx_write_mem32 (struct alx_hw*,int ,int ) ;

void alx_disable_rss(struct alx_hw *hw)
{
 u32 ctrl = alx_read_mem32(hw, ALX_RXQ0);

 ctrl &= ~ALX_RXQ0_RSS_HASH_EN;
 alx_write_mem32(hw, ALX_RXQ0, ctrl);
}
