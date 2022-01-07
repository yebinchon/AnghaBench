
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct lan78xx_net {int link_on; int intf; int flags; int net; scalar_t__ urb_intr; } ;


 int EVENT_DEV_OPEN ;
 int EVENT_LINK_RESET ;
 int GFP_KERNEL ;
 int ifup ;
 int lan78xx_defer_kevent (struct lan78xx_net*,int ) ;
 int lan78xx_init_stats (struct lan78xx_net*) ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int netif_dbg (struct lan78xx_net*,int ,int ,char*) ;
 int netif_err (struct lan78xx_net*,int ,int ,char*,int) ;
 int netif_start_queue (struct net_device*) ;
 int phy_start (int ) ;
 int set_bit (int ,int *) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int usb_submit_urb (scalar_t__,int ) ;

__attribute__((used)) static int lan78xx_open(struct net_device *net)
{
 struct lan78xx_net *dev = netdev_priv(net);
 int ret;

 ret = usb_autopm_get_interface(dev->intf);
 if (ret < 0)
  goto out;

 phy_start(net->phydev);

 netif_dbg(dev, ifup, dev->net, "phy initialised successfully");


 if (dev->urb_intr) {
  ret = usb_submit_urb(dev->urb_intr, GFP_KERNEL);
  if (ret < 0) {
   netif_err(dev, ifup, dev->net,
      "intr submit %d\n", ret);
   goto done;
  }
 }

 lan78xx_init_stats(dev);

 set_bit(EVENT_DEV_OPEN, &dev->flags);

 netif_start_queue(net);

 dev->link_on = 0;

 lan78xx_defer_kevent(dev, EVENT_LINK_RESET);
done:
 usb_autopm_put_interface(dev->intf);

out:
 return ret;
}
