
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;


 int asix_read_phy_addr (struct usbnet*,int) ;

int asix_get_phy_addr(struct usbnet *dev)
{

 return asix_read_phy_addr(dev, 1);
}
