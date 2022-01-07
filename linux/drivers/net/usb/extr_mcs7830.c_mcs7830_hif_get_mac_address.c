
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;


 int ETH_ALEN ;
 int HIF_REG_ETHERNET_ADDR ;
 int mcs7830_get_reg (struct usbnet*,int ,int ,unsigned char*) ;

__attribute__((used)) static int mcs7830_hif_get_mac_address(struct usbnet *dev, unsigned char *addr)
{
 int ret = mcs7830_get_reg(dev, HIF_REG_ETHERNET_ADDR, ETH_ALEN, addr);
 if (ret < 0)
  return ret;
 return 0;
}
