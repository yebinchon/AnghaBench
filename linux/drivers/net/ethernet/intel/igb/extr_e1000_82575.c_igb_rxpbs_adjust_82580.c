
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;


 size_t ARRAY_SIZE (int *) ;
 int * e1000_82580_rxpbs_table ;

u16 igb_rxpbs_adjust_82580(u32 data)
{
 u16 ret_val = 0;

 if (data < ARRAY_SIZE(e1000_82580_rxpbs_table))
  ret_val = e1000_82580_rxpbs_table[data];

 return ret_val;
}
