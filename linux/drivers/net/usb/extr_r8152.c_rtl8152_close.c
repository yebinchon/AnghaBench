
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* down ) (struct r8152*) ;} ;
struct r8152 {int intf; int control; TYPE_1__ rtl_ops; int flags; int schedule; int intr_urb; int napi; int tx_tl; int pm_notifier; } ;
struct net_device {int dummy; } ;


 int RTL8152_UNPLUG ;
 int WORK_ENABLE ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int free_all_mem (struct r8152*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int napi_disable (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int rtl_drop_queued_tx (struct r8152*) ;
 int rtl_stop_rx (struct r8152*) ;
 int stub1 (struct r8152*) ;
 int tasklet_disable (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int unregister_pm_notifier (int *) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int rtl8152_close(struct net_device *netdev)
{
 struct r8152 *tp = netdev_priv(netdev);
 int res = 0;




 tasklet_disable(&tp->tx_tl);
 napi_disable(&tp->napi);
 clear_bit(WORK_ENABLE, &tp->flags);
 usb_kill_urb(tp->intr_urb);
 cancel_delayed_work_sync(&tp->schedule);
 netif_stop_queue(netdev);

 res = usb_autopm_get_interface(tp->intf);
 if (res < 0 || test_bit(RTL8152_UNPLUG, &tp->flags)) {
  rtl_drop_queued_tx(tp);
  rtl_stop_rx(tp);
 } else {
  mutex_lock(&tp->control);

  tp->rtl_ops.down(tp);

  mutex_unlock(&tp->control);

  usb_autopm_put_interface(tp->intf);
 }

 free_all_mem(tp);

 return res;
}
