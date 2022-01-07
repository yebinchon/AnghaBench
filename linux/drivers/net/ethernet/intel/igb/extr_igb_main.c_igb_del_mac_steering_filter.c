
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct igb_adapter {int dummy; } ;


 int IGB_MAC_STATE_QUEUE_STEERING ;
 int igb_del_mac_filter_flags (struct igb_adapter*,int const*,int,int) ;

int igb_del_mac_steering_filter(struct igb_adapter *adapter,
    const u8 *addr, u8 queue, u8 flags)
{
 return igb_del_mac_filter_flags(adapter, addr, queue,
     IGB_MAC_STATE_QUEUE_STEERING | flags);
}
