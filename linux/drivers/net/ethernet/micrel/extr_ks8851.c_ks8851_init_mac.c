
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dev_addr; } ;
struct ks8851_net {int rc_ccr; struct net_device* netdev; TYPE_2__* spidev; } ;
struct TYPE_3__ {int of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int CCR_EEPROM ;
 int IS_ERR (int const*) ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_copy (int ,int const*) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int ks8851_read_mac_addr (struct net_device*) ;
 int ks8851_write_mac_addr (struct net_device*) ;
 int netdev_err (struct net_device*,char*,int ) ;
 int * of_get_mac_address (int ) ;

__attribute__((used)) static void ks8851_init_mac(struct ks8851_net *ks)
{
 struct net_device *dev = ks->netdev;
 const u8 *mac_addr;

 mac_addr = of_get_mac_address(ks->spidev->dev.of_node);
 if (!IS_ERR(mac_addr)) {
  ether_addr_copy(dev->dev_addr, mac_addr);
  ks8851_write_mac_addr(dev);
  return;
 }

 if (ks->rc_ccr & CCR_EEPROM) {
  ks8851_read_mac_addr(dev);
  if (is_valid_ether_addr(dev->dev_addr))
   return;

  netdev_err(ks->netdev, "invalid mac address read %pM\n",
    dev->dev_addr);
 }

 eth_hw_addr_random(dev);
 ks8851_write_mac_addr(dev);
}
