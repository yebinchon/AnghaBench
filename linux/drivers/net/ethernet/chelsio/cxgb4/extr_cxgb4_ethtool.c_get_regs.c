
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct adapter {int dummy; } ;


 int mk_adap_vers (struct adapter*) ;
 struct adapter* netdev2adap (struct net_device*) ;
 int t4_get_regs (struct adapter*,void*,size_t) ;
 size_t t4_get_regs_len (struct adapter*) ;

__attribute__((used)) static void get_regs(struct net_device *dev, struct ethtool_regs *regs,
       void *buf)
{
 struct adapter *adap = netdev2adap(dev);
 size_t buf_size;

 buf_size = t4_get_regs_len(adap);
 regs->version = mk_adap_vers(adap);
 t4_get_regs(adap, buf, buf_size);
}
