
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int (* enable ) (struct r8152*) ;} ;
struct r8152 {int napi; int rx_done; int intr_urb; int tx_tl; int control; TYPE_1__ rtl_ops; int flags; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int GFP_KERNEL ;
 int WORK_ENABLE ;
 int _rtl8152_set_rx_mode (struct net_device*) ;
 scalar_t__ determine_ethernet_addr (struct r8152*,struct sockaddr*) ;
 int dev_set_mac_address (struct net_device*,struct sockaddr*,int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int napi_enable (int *) ;
 int napi_schedule (int *) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int rtl_start_rx (struct r8152*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int set_bit (int ,int *) ;
 int stub1 (struct r8152*) ;
 int tasklet_enable (int *) ;
 struct r8152* usb_get_intfdata (struct usb_interface*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int rtl8152_post_reset(struct usb_interface *intf)
{
 struct r8152 *tp = usb_get_intfdata(intf);
 struct net_device *netdev;
 struct sockaddr sa;

 if (!tp)
  return 0;


 if (determine_ethernet_addr(tp, &sa) >= 0) {
  rtnl_lock();
  dev_set_mac_address (tp->netdev, &sa, ((void*)0));
  rtnl_unlock();
 }

 netdev = tp->netdev;
 if (!netif_running(netdev))
  return 0;

 set_bit(WORK_ENABLE, &tp->flags);
 if (netif_carrier_ok(netdev)) {
  mutex_lock(&tp->control);
  tp->rtl_ops.enable(tp);
  rtl_start_rx(tp);
  _rtl8152_set_rx_mode(netdev);
  mutex_unlock(&tp->control);
 }

 napi_enable(&tp->napi);
 tasklet_enable(&tp->tx_tl);
 netif_wake_queue(netdev);
 usb_submit_urb(tp->intr_urb, GFP_KERNEL);

 if (!list_empty(&tp->rx_done))
  napi_schedule(&tp->napi);

 return 0;
}
