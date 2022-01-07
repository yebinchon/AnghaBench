
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8169_private {struct net_device* dev; } ;
struct net_device {int * dev_addr; } ;


 int MAC0 ;
 int dev_warn (int ,char*) ;
 int eth_hw_addr_random (struct net_device*) ;
 int eth_platform_get_mac_address (int ,int *) ;
 scalar_t__ is_valid_ether_addr (int *) ;
 int rtl_rar_set (struct rtl8169_private*,int *) ;
 int rtl_read_mac_address (struct rtl8169_private*,int *) ;
 int rtl_read_mac_from_reg (struct rtl8169_private*,int *,int ) ;
 int tp_to_dev (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_init_mac_address(struct rtl8169_private *tp)
{
 struct net_device *dev = tp->dev;
 u8 *mac_addr = dev->dev_addr;
 int rc;

 rc = eth_platform_get_mac_address(tp_to_dev(tp), mac_addr);
 if (!rc)
  goto done;

 rtl_read_mac_address(tp, mac_addr);
 if (is_valid_ether_addr(mac_addr))
  goto done;

 rtl_read_mac_from_reg(tp, mac_addr, MAC0);
 if (is_valid_ether_addr(mac_addr))
  goto done;

 eth_hw_addr_random(dev);
 dev_warn(tp_to_dev(tp), "can't read MAC address, setting random one\n");
done:
 rtl_rar_set(tp, mac_addr);
}
