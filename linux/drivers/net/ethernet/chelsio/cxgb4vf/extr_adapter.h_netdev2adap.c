
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {struct adapter* adapter; } ;


 TYPE_1__* netdev2pinfo (struct net_device const*) ;

__attribute__((used)) static inline struct adapter *netdev2adap(const struct net_device *dev)
{
 return netdev2pinfo(dev)->adapter;
}
