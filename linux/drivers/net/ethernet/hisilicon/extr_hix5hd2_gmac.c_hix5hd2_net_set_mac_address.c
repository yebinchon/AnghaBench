
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int eth_mac_addr (struct net_device*,void*) ;
 int hix5hd2_hw_set_mac_addr (struct net_device*) ;

__attribute__((used)) static int hix5hd2_net_set_mac_address(struct net_device *dev, void *p)
{
 int ret;

 ret = eth_mac_addr(dev, p);
 if (!ret)
  hix5hd2_hw_set_mac_addr(dev);

 return ret;
}
