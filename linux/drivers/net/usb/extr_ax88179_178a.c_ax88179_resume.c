
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;


 int AX_ACCESS_MAC ;
 int AX_CLK_SELECT ;
 int AX_CLK_SELECT_ACS ;
 int AX_CLK_SELECT_BCS ;
 int AX_PHYPWR_RSTCTL ;
 int AX_PHYPWR_RSTCTL_IPRL ;
 int AX_RX_CTL ;
 int AX_RX_CTL_AB ;
 int AX_RX_CTL_AMALL ;
 int AX_RX_CTL_AP ;
 int AX_RX_CTL_DROPCRCERR ;
 int AX_RX_CTL_IPE ;
 int AX_RX_CTL_START ;
 int ax88179_auto_detach (struct usbnet*,int) ;
 int ax88179_read_cmd_nopm (struct usbnet*,int ,int ,int,int,int*) ;
 int ax88179_write_cmd_nopm (struct usbnet*,int ,int ,int,int,int*) ;
 int msleep (int) ;
 int udelay (int) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_link_change (struct usbnet*,int ,int ) ;
 int usbnet_resume (struct usb_interface*) ;

__attribute__((used)) static int ax88179_resume(struct usb_interface *intf)
{
 struct usbnet *dev = usb_get_intfdata(intf);
 u16 tmp16;
 u8 tmp8;

 usbnet_link_change(dev, 0, 0);


 tmp16 = 0;
 ax88179_write_cmd_nopm(dev, AX_ACCESS_MAC, AX_PHYPWR_RSTCTL,
          2, 2, &tmp16);
 udelay(1000);

 tmp16 = AX_PHYPWR_RSTCTL_IPRL;
 ax88179_write_cmd_nopm(dev, AX_ACCESS_MAC, AX_PHYPWR_RSTCTL,
          2, 2, &tmp16);
 msleep(200);


 ax88179_auto_detach(dev, 1);


 ax88179_read_cmd_nopm(dev, AX_ACCESS_MAC, AX_CLK_SELECT, 1, 1, &tmp8);
 tmp8 |= AX_CLK_SELECT_ACS | AX_CLK_SELECT_BCS;
 ax88179_write_cmd_nopm(dev, AX_ACCESS_MAC, AX_CLK_SELECT, 1, 1, &tmp8);
 msleep(100);


 tmp16 = AX_RX_CTL_DROPCRCERR | AX_RX_CTL_IPE | AX_RX_CTL_START |
  AX_RX_CTL_AP | AX_RX_CTL_AMALL | AX_RX_CTL_AB;
 ax88179_write_cmd_nopm(dev, AX_ACCESS_MAC, AX_RX_CTL, 2, 2, &tmp16);

 return usbnet_resume(intf);
}
