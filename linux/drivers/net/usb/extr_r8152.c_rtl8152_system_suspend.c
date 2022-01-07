
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* down ) (struct r8152*) ;} ;
struct napi_struct {int dummy; } ;
struct r8152 {int tx_tl; TYPE_1__ rtl_ops; int schedule; int intr_urb; int flags; struct napi_struct napi; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int WORK_ENABLE ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int napi_disable (struct napi_struct*) ;
 int napi_enable (struct napi_struct*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int stub1 (struct r8152*) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int rtl8152_system_suspend(struct r8152 *tp)
{
 struct net_device *netdev = tp->netdev;

 netif_device_detach(netdev);

 if (netif_running(netdev) && test_bit(WORK_ENABLE, &tp->flags)) {
  struct napi_struct *napi = &tp->napi;

  clear_bit(WORK_ENABLE, &tp->flags);
  usb_kill_urb(tp->intr_urb);
  tasklet_disable(&tp->tx_tl);
  napi_disable(napi);
  cancel_delayed_work_sync(&tp->schedule);
  tp->rtl_ops.down(tp);
  napi_enable(napi);
  tasklet_enable(&tp->tx_tl);
 }

 return 0;
}
