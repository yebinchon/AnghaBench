
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BIT (int) ;

__attribute__((used)) static u32
mt76x02_tx_power_mask(u8 v1, u8 v2, u8 v3, u8 v4)
{
 u32 val = 0;

 val |= (v1 & (BIT(6) - 1)) << 0;
 val |= (v2 & (BIT(6) - 1)) << 8;
 val |= (v3 & (BIT(6) - 1)) << 16;
 val |= (v4 & (BIT(6) - 1)) << 24;
 return val;
}
