
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;


 int BIT (int) ;
 scalar_t__ SIZE_4K ;

__attribute__((used)) static u16 xgene_enet_set_data_len(u32 size)
{
 u16 hw_len;

 hw_len = (size == SIZE_4K) ? BIT(14) : 0;

 return hw_len;
}
