
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct igc_adapter {int dummy; } ;


 int IGC_MAC_STATE_QUEUE_STEERING ;
 int igc_add_mac_filter_flags (struct igc_adapter*,int const*,int,int) ;

int igc_add_mac_steering_filter(struct igc_adapter *adapter,
    const u8 *addr, u8 queue, u8 flags)
{
 return igc_add_mac_filter_flags(adapter, addr, queue,
     IGC_MAC_STATE_QUEUE_STEERING | flags);
}
