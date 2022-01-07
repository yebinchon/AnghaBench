
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct be_rx_obj {int dummy; } ;
struct be_adapter {int dummy; } ;
struct TYPE_2__ {scalar_t__ rx_drops_no_frags; } ;


 int BEx_chip (struct be_adapter*) ;
 int accumulate_16bit_val (scalar_t__*,int ) ;
 TYPE_1__* rx_stats (struct be_rx_obj*) ;

__attribute__((used)) static void populate_erx_stats(struct be_adapter *adapter,
          struct be_rx_obj *rxo, u32 erx_stat)
{
 if (!BEx_chip(adapter))
  rx_stats(rxo)->rx_drops_no_frags = erx_stat;
 else



  accumulate_16bit_val(&rx_stats(rxo)->rx_drops_no_frags,
         (u16)erx_stat);
}
