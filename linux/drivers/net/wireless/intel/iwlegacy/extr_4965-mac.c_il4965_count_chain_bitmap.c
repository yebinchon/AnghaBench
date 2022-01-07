
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BIT (int) ;

__attribute__((used)) static u8
il4965_count_chain_bitmap(u32 chain_bitmap)
{
 u8 res;
 res = (chain_bitmap & BIT(0)) >> 0;
 res += (chain_bitmap & BIT(1)) >> 1;
 res += (chain_bitmap & BIT(2)) >> 2;
 res += (chain_bitmap & BIT(3)) >> 3;
 return res;
}
