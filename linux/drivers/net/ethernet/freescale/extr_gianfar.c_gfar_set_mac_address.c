
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;


 int gfar_set_mac_for_addr (struct net_device*,int ,int ) ;

__attribute__((used)) static int gfar_set_mac_address(struct net_device *dev)
{
 gfar_set_mac_for_addr(dev, 0, dev->dev_addr);

 return 0;
}
