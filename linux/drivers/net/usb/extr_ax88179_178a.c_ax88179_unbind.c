
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;


 int AX_ACCESS_MAC ;
 int AX_CLK_SELECT ;
 int AX_PHYPWR_RSTCTL ;
 int AX_RX_CTL ;
 scalar_t__ AX_RX_CTL_STOP ;
 int ax88179_write_cmd (struct usbnet*,int ,int ,int,int,scalar_t__*) ;

__attribute__((used)) static void ax88179_unbind(struct usbnet *dev, struct usb_interface *intf)
{
 u16 tmp16;


 tmp16 = AX_RX_CTL_STOP;
 ax88179_write_cmd(dev, AX_ACCESS_MAC, AX_RX_CTL, 2, 2, &tmp16);

 tmp16 = 0;
 ax88179_write_cmd(dev, AX_ACCESS_MAC, AX_CLK_SELECT, 1, 1, &tmp16);


 tmp16 = 0;
 ax88179_write_cmd(dev, AX_ACCESS_MAC, AX_PHYPWR_RSTCTL, 2, 2, &tmp16);
}
