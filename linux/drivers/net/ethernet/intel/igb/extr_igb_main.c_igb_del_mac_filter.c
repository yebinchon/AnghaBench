
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct igb_adapter {int dummy; } ;


 int igb_del_mac_filter_flags (struct igb_adapter*,int const*,int const,int ) ;

__attribute__((used)) static int igb_del_mac_filter(struct igb_adapter *adapter, const u8 *addr,
         const u8 queue)
{
 return igb_del_mac_filter_flags(adapter, addr, queue, 0);
}
