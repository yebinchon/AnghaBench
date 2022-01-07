
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct lan78xx_net {int urb_intr; int deferred; int wq; struct net_device* net; } ;


 int PHY_KSZ9031RNX ;
 int PHY_LAN8835 ;
 int cancel_delayed_work_sync (int *) ;
 int fixed_phy_unregister (struct phy_device*) ;
 int free_netdev (struct net_device*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int lan78xx_unbind (struct lan78xx_net*,struct usb_interface*) ;
 int phy_disconnect (struct phy_device*) ;
 scalar_t__ phy_is_pseudo_fixed_link (struct phy_device*) ;
 int phy_unregister_fixup_for_uid (int ,int) ;
 int unregister_netdev (struct net_device*) ;
 int usb_free_urb (int ) ;
 struct lan78xx_net* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_scuttle_anchored_urbs (int *) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void lan78xx_disconnect(struct usb_interface *intf)
{
 struct lan78xx_net *dev;
 struct usb_device *udev;
 struct net_device *net;
 struct phy_device *phydev;

 dev = usb_get_intfdata(intf);
 usb_set_intfdata(intf, ((void*)0));
 if (!dev)
  return;

 udev = interface_to_usbdev(intf);
 net = dev->net;
 phydev = net->phydev;

 phy_unregister_fixup_for_uid(PHY_KSZ9031RNX, 0xfffffff0);
 phy_unregister_fixup_for_uid(PHY_LAN8835, 0xfffffff0);

 phy_disconnect(net->phydev);

 if (phy_is_pseudo_fixed_link(phydev))
  fixed_phy_unregister(phydev);

 unregister_netdev(net);

 cancel_delayed_work_sync(&dev->wq);

 usb_scuttle_anchored_urbs(&dev->deferred);

 lan78xx_unbind(dev, intf);

 usb_kill_urb(dev->urb_intr);
 usb_free_urb(dev->urb_intr);

 free_netdev(net);
 usb_put_dev(udev);
}
