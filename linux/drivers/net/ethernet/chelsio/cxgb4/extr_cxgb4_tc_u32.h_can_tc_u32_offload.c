
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct adapter {scalar_t__ tc_u32; } ;


 int NETIF_F_HW_TC ;
 struct adapter* netdev2adap (struct net_device*) ;

__attribute__((used)) static inline bool can_tc_u32_offload(struct net_device *dev)
{
 struct adapter *adap = netdev2adap(dev);

 return (dev->features & NETIF_F_HW_TC) && adap->tc_u32 ? 1 : 0;
}
