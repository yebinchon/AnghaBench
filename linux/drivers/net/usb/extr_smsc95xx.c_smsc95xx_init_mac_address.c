
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {TYPE_3__* net; TYPE_2__* udev; } ;
struct TYPE_7__ {int dev_addr; } ;
struct TYPE_5__ {int of_node; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int EEPROM_MAC_OFFSET ;
 int ETH_ALEN ;
 int IS_ERR (int const*) ;
 int eth_hw_addr_random (TYPE_3__*) ;
 int ether_addr_copy (int ,int const*) ;
 int ifup ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int netif_dbg (struct usbnet*,int ,TYPE_3__*,char*) ;
 int * of_get_mac_address (int ) ;
 scalar_t__ smsc95xx_read_eeprom (struct usbnet*,int ,int ,int ) ;

__attribute__((used)) static void smsc95xx_init_mac_address(struct usbnet *dev)
{
 const u8 *mac_addr;


 mac_addr = of_get_mac_address(dev->udev->dev.of_node);
 if (!IS_ERR(mac_addr)) {
  ether_addr_copy(dev->net->dev_addr, mac_addr);
  return;
 }


 if (smsc95xx_read_eeprom(dev, EEPROM_MAC_OFFSET, ETH_ALEN,
   dev->net->dev_addr) == 0) {
  if (is_valid_ether_addr(dev->net->dev_addr)) {

   netif_dbg(dev, ifup, dev->net, "MAC address read from EEPROM\n");
   return;
  }
 }


 eth_hw_addr_random(dev->net);
 netif_dbg(dev, ifup, dev->net, "MAC address set to eth_random_addr\n");
}
