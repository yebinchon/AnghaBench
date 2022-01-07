
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smt_entry {int dummy; } ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;


 struct adapter* netdev2adap (struct net_device*) ;
 struct smt_entry* t4_smt_alloc_switching (struct adapter*,int,int *) ;

struct smt_entry *cxgb4_smt_alloc_switching(struct net_device *dev, u8 *smac)
{
 struct adapter *adap = netdev2adap(dev);

 return t4_smt_alloc_switching(adap, 0x0, smac);
}
