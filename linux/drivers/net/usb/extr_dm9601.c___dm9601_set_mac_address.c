
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* net; } ;
struct TYPE_2__ {int dev_addr; } ;


 int DM_PHY_ADDR ;
 int ETH_ALEN ;
 int dm_write_async (struct usbnet*,int ,int ,int ) ;

__attribute__((used)) static void __dm9601_set_mac_address(struct usbnet *dev)
{
 dm_write_async(dev, DM_PHY_ADDR, ETH_ALEN, dev->net->dev_addr);
}
