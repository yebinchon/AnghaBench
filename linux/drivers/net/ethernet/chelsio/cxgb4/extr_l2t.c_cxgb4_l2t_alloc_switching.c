
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct l2t_entry {int dummy; } ;
struct adapter {int dummy; } ;


 struct adapter* netdev2adap (struct net_device*) ;
 struct l2t_entry* t4_l2t_alloc_switching (struct adapter*,int ,int ,int *) ;

struct l2t_entry *cxgb4_l2t_alloc_switching(struct net_device *dev, u16 vlan,
         u8 port, u8 *dmac)
{
 struct adapter *adap = netdev2adap(dev);

 return t4_l2t_alloc_switching(adap, vlan, port, dmac);
}
