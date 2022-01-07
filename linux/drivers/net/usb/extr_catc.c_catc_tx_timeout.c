
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct catc {int tx_urb; } ;


 int dev_warn (int *,char*) ;
 struct catc* netdev_priv (struct net_device*) ;
 int usb_unlink_urb (int ) ;

__attribute__((used)) static void catc_tx_timeout(struct net_device *netdev)
{
 struct catc *catc = netdev_priv(netdev);

 dev_warn(&netdev->dev, "Transmit timed out.\n");
 usb_unlink_urb(catc->tx_urb);
}
