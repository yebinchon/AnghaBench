
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {int (* disable ) (struct r8152*) ;} ;
struct r8152 {int control; TYPE_1__ rtl_ops; int schedule; int intr_urb; int flags; int napi; int tx_tl; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int WORK_ENABLE ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int napi_disable (int *) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int stub1 (struct r8152*) ;
 int tasklet_disable (int *) ;
 struct r8152* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int rtl8152_pre_reset(struct usb_interface *intf)
{
 struct r8152 *tp = usb_get_intfdata(intf);
 struct net_device *netdev;

 if (!tp)
  return 0;

 netdev = tp->netdev;
 if (!netif_running(netdev))
  return 0;

 netif_stop_queue(netdev);
 tasklet_disable(&tp->tx_tl);
 napi_disable(&tp->napi);
 clear_bit(WORK_ENABLE, &tp->flags);
 usb_kill_urb(tp->intr_urb);
 cancel_delayed_work_sync(&tp->schedule);
 if (netif_carrier_ok(netdev)) {
  mutex_lock(&tp->control);
  tp->rtl_ops.disable(tp);
  mutex_unlock(&tp->control);
 }

 return 0;
}
