
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* up ) (struct r8152*) ;} ;
struct r8152 {int intr_urb; int flags; TYPE_1__ rtl_ops; struct net_device* netdev; } ;
struct net_device {int flags; } ;


 int GFP_NOIO ;
 int IFF_UP ;
 int WORK_ENABLE ;
 int netif_carrier_off (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct r8152*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int rtl8152_system_resume(struct r8152 *tp)
{
 struct net_device *netdev = tp->netdev;

 netif_device_attach(netdev);

 if (netif_running(netdev) && netdev->flags & IFF_UP) {
  tp->rtl_ops.up(tp);
  netif_carrier_off(netdev);
  set_bit(WORK_ENABLE, &tp->flags);
  usb_submit_urb(tp->intr_urb, GFP_NOIO);
 }

 return 0;
}
