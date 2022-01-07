
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;


 int eth_mac_addr (struct net_device*,void*) ;
 int gfar_set_mac_for_addr (struct net_device*,int ,int ) ;

__attribute__((used)) static int gfar_set_mac_addr(struct net_device *dev, void *p)
{
 eth_mac_addr(dev, p);

 gfar_set_mac_for_addr(dev, 0, dev->dev_addr);

 return 0;
}
