
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;
typedef int pm_message_t ;


 int AX_ACCESS_MAC ;
 int AX_CLK_SELECT ;
 int AX_MEDIUM_RECEIVE_EN ;
 int AX_MEDIUM_STATUS_MODE ;
 int AX_PHYPWR_RSTCTL ;
 int AX_PHYPWR_RSTCTL_BZ ;
 int AX_PHYPWR_RSTCTL_IPRL ;
 int AX_RX_CTL ;
 int AX_RX_CTL_STOP ;
 int ax88179_read_cmd_nopm (struct usbnet*,int ,int ,int,int,int*) ;
 int ax88179_write_cmd_nopm (struct usbnet*,int ,int ,int,int,int*) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_suspend (struct usb_interface*,int ) ;

__attribute__((used)) static int ax88179_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct usbnet *dev = usb_get_intfdata(intf);
 u16 tmp16;
 u8 tmp8;

 usbnet_suspend(intf, message);


 ax88179_read_cmd_nopm(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
         2, 2, &tmp16);
 tmp16 &= ~AX_MEDIUM_RECEIVE_EN;
 ax88179_write_cmd_nopm(dev, AX_ACCESS_MAC, AX_MEDIUM_STATUS_MODE,
          2, 2, &tmp16);


 ax88179_read_cmd_nopm(dev, AX_ACCESS_MAC, AX_PHYPWR_RSTCTL,
         2, 2, &tmp16);

 tmp16 |= AX_PHYPWR_RSTCTL_BZ | AX_PHYPWR_RSTCTL_IPRL;
 ax88179_write_cmd_nopm(dev, AX_ACCESS_MAC, AX_PHYPWR_RSTCTL,
          2, 2, &tmp16);


 tmp8 = 0;
 ax88179_write_cmd_nopm(dev, AX_ACCESS_MAC, AX_CLK_SELECT, 1, 1, &tmp8);


 tmp16 = AX_RX_CTL_STOP;
 ax88179_write_cmd_nopm(dev, AX_ACCESS_MAC, AX_RX_CTL, 2, 2, &tmp16);

 return 0;
}
