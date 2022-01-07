
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {TYPE_1__* net; } ;
struct TYPE_3__ {int dev_addr; } ;


 int ETH_ALEN ;
 int eth_hw_addr_random (TYPE_1__*) ;
 scalar_t__ is_valid_ether_addr (int *) ;
 int memcpy (int ,int *,int ) ;
 int netdev_info (TYPE_1__*,char*) ;

__attribute__((used)) static void asix_set_netdev_dev_addr(struct usbnet *dev, u8 *addr)
{
 if (is_valid_ether_addr(addr)) {
  memcpy(dev->net->dev_addr, addr, ETH_ALEN);
 } else {
  netdev_info(dev->net, "invalid hw address, using random\n");
  eth_hw_addr_random(dev->net);
 }
}
