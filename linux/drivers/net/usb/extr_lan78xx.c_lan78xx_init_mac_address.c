
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct lan78xx_net {TYPE_2__* net; TYPE_1__* udev; } ;
struct TYPE_4__ {int dev_addr; } ;
struct TYPE_3__ {int dev; } ;


 int EEPROM_MAC_OFFSET ;
 int ETH_ALEN ;
 int MAF_HI (int ) ;
 int MAF_HI_VALID_ ;
 int MAF_LO (int ) ;
 int RX_ADDRH ;
 int RX_ADDRL ;
 int eth_platform_get_mac_address (int *,int*) ;
 int eth_random_addr (int*) ;
 int ether_addr_copy (int ,int*) ;
 int ifup ;
 scalar_t__ is_valid_ether_addr (int*) ;
 scalar_t__ lan78xx_read_eeprom (struct lan78xx_net*,int ,int ,int*) ;
 scalar_t__ lan78xx_read_otp (struct lan78xx_net*,int ,int ,int*) ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int*) ;
 int lan78xx_write_reg (struct lan78xx_net*,int ,int) ;
 int netif_dbg (struct lan78xx_net*,int ,TYPE_2__*,char*) ;

__attribute__((used)) static void lan78xx_init_mac_address(struct lan78xx_net *dev)
{
 u32 addr_lo, addr_hi;
 int ret;
 u8 addr[6];

 ret = lan78xx_read_reg(dev, RX_ADDRL, &addr_lo);
 ret = lan78xx_read_reg(dev, RX_ADDRH, &addr_hi);

 addr[0] = addr_lo & 0xFF;
 addr[1] = (addr_lo >> 8) & 0xFF;
 addr[2] = (addr_lo >> 16) & 0xFF;
 addr[3] = (addr_lo >> 24) & 0xFF;
 addr[4] = addr_hi & 0xFF;
 addr[5] = (addr_hi >> 8) & 0xFF;

 if (!is_valid_ether_addr(addr)) {
  if (!eth_platform_get_mac_address(&dev->udev->dev, addr)) {

   netif_dbg(dev, ifup, dev->net,
      "MAC address read from Device Tree");
  } else if (((lan78xx_read_eeprom(dev, EEPROM_MAC_OFFSET,
       ETH_ALEN, addr) == 0) ||
       (lan78xx_read_otp(dev, EEPROM_MAC_OFFSET,
           ETH_ALEN, addr) == 0)) &&
      is_valid_ether_addr(addr)) {

   netif_dbg(dev, ifup, dev->net,
      "MAC address read from EEPROM");
  } else {

   eth_random_addr(addr);
   netif_dbg(dev, ifup, dev->net,
      "MAC address set to random addr");
  }

  addr_lo = addr[0] | (addr[1] << 8) |
     (addr[2] << 16) | (addr[3] << 24);
  addr_hi = addr[4] | (addr[5] << 8);

  ret = lan78xx_write_reg(dev, RX_ADDRL, addr_lo);
  ret = lan78xx_write_reg(dev, RX_ADDRH, addr_hi);
 }

 ret = lan78xx_write_reg(dev, MAF_LO(0), addr_lo);
 ret = lan78xx_write_reg(dev, MAF_HI(0), addr_hi | MAF_HI_VALID_);

 ether_addr_copy(dev->net->dev_addr, addr);
}
