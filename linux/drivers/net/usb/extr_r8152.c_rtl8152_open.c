
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int notifier_call; } ;
struct TYPE_3__ {int (* up ) (struct r8152*) ;} ;
struct r8152 {int intf; int control; TYPE_2__ pm_notifier; int tx_tl; int napi; int netdev; int intr_urb; int flags; TYPE_1__ rtl_ops; } ;
struct net_device {int dummy; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int WORK_ENABLE ;
 int alloc_all_mem (struct r8152*) ;
 int free_all_mem (struct r8152*) ;
 int ifup ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int napi_enable (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_device_detach (int ) ;
 int netif_start_queue (struct net_device*) ;
 int netif_warn (struct r8152*,int ,struct net_device*,char*,int) ;
 int register_pm_notifier (TYPE_2__*) ;
 int rtl_notifier ;
 int set_bit (int ,int *) ;
 int stub1 (struct r8152*) ;
 int tasklet_enable (int *) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int rtl8152_open(struct net_device *netdev)
{
 struct r8152 *tp = netdev_priv(netdev);
 int res = 0;

 res = alloc_all_mem(tp);
 if (res)
  goto out;

 res = usb_autopm_get_interface(tp->intf);
 if (res < 0)
  goto out_free;

 mutex_lock(&tp->control);

 tp->rtl_ops.up(tp);

 netif_carrier_off(netdev);
 netif_start_queue(netdev);
 set_bit(WORK_ENABLE, &tp->flags);

 res = usb_submit_urb(tp->intr_urb, GFP_KERNEL);
 if (res) {
  if (res == -ENODEV)
   netif_device_detach(tp->netdev);
  netif_warn(tp, ifup, netdev, "intr_urb submit failed: %d\n",
      res);
  goto out_unlock;
 }
 napi_enable(&tp->napi);
 tasklet_enable(&tp->tx_tl);

 mutex_unlock(&tp->control);

 usb_autopm_put_interface(tp->intf);




 return 0;

out_unlock:
 mutex_unlock(&tp->control);
 usb_autopm_put_interface(tp->intf);
out_free:
 free_all_mem(tp);
out:
 return res;
}
