
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* autosuspend_en ) (struct r8152*,int) ;int (* disable ) (struct r8152*) ;} ;
struct napi_struct {int dummy; } ;
struct r8152 {int flags; TYPE_1__ rtl_ops; int intr_urb; struct napi_struct napi; int rx_done; struct net_device* netdev; } ;
struct net_device {int flags; } ;


 int GFP_NOIO ;
 int IFF_UP ;
 int LINK_STATUS ;
 int SELECTIVE_SUSPEND ;
 int WORK_ENABLE ;
 int clear_bit (int ,int *) ;
 int link ;
 int list_empty (int *) ;
 int napi_disable (struct napi_struct*) ;
 int napi_enable (struct napi_struct*) ;
 int napi_schedule (struct napi_struct*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_info (struct r8152*,int ,struct net_device*,char*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int rtl8152_get_speed (struct r8152*) ;
 int rtl_start_rx (struct r8152*) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int stub1 (struct r8152*,int) ;
 int stub2 (struct r8152*) ;
 int stub3 (struct r8152*,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int rtl8152_runtime_resume(struct r8152 *tp)
{
 struct net_device *netdev = tp->netdev;

 if (netif_running(netdev) && netdev->flags & IFF_UP) {
  struct napi_struct *napi = &tp->napi;

  tp->rtl_ops.autosuspend_en(tp, 0);
  napi_disable(napi);
  set_bit(WORK_ENABLE, &tp->flags);

  if (netif_carrier_ok(netdev)) {
   if (rtl8152_get_speed(tp) & LINK_STATUS) {
    rtl_start_rx(tp);
   } else {
    netif_carrier_off(netdev);
    tp->rtl_ops.disable(tp);
    netif_info(tp, link, netdev, "linking down\n");
   }
  }

  napi_enable(napi);
  clear_bit(SELECTIVE_SUSPEND, &tp->flags);
  smp_mb__after_atomic();

  if (!list_empty(&tp->rx_done))
   napi_schedule(&tp->napi);

  usb_submit_urb(tp->intr_urb, GFP_NOIO);
 } else {
  if (netdev->flags & IFF_UP)
   tp->rtl_ops.autosuspend_en(tp, 0);

  clear_bit(SELECTIVE_SUSPEND, &tp->flags);
 }

 return 0;
}
