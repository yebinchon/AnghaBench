
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct lan78xx_net {TYPE_1__* net; } ;
struct TYPE_2__ {int phydev; } ;


 int lan78xx_reset (struct lan78xx_net*) ;
 int lan78xx_resume (struct usb_interface*) ;
 int phy_start (int ) ;
 struct lan78xx_net* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int lan78xx_reset_resume(struct usb_interface *intf)
{
 struct lan78xx_net *dev = usb_get_intfdata(intf);

 lan78xx_reset(dev);

 phy_start(dev->net->phydev);

 return lan78xx_resume(intf);
}
