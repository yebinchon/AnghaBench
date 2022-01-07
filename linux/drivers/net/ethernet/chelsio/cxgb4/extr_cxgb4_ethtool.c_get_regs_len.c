
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct adapter {int dummy; } ;


 struct adapter* netdev2adap (struct net_device*) ;
 int t4_get_regs_len (struct adapter*) ;

__attribute__((used)) static int get_regs_len(struct net_device *dev)
{
 struct adapter *adap = netdev2adap(dev);

 return t4_get_regs_len(adap);
}
