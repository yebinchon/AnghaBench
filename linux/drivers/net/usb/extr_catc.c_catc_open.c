
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct catc {int timer; int is_f5u011; TYPE_1__* usbdev; TYPE_2__* irq_urb; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_KERNEL ;
 scalar_t__ STATS_UPDATE ;
 int dev_err (int *,char*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct catc* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int catc_open(struct net_device *netdev)
{
 struct catc *catc = netdev_priv(netdev);
 int status;

 catc->irq_urb->dev = catc->usbdev;
 if ((status = usb_submit_urb(catc->irq_urb, GFP_KERNEL)) < 0) {
  dev_err(&catc->usbdev->dev, "submit(irq_urb) status %d\n",
   status);
  return -1;
 }

 netif_start_queue(netdev);

 if (!catc->is_f5u011)
  mod_timer(&catc->timer, jiffies + STATS_UPDATE);

 return 0;
}
