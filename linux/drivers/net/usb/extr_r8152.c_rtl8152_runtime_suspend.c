
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct napi_struct {int dummy; } ;
struct TYPE_2__ {int (* autosuspend_en ) (struct r8152*,int) ;} ;
struct r8152 {struct napi_struct napi; TYPE_1__ rtl_ops; int intr_urb; int flags; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int EBUSY ;
 int MCU_TYPE_PLA ;
 int PLA_OOB_CTRL ;
 int PLA_RCR ;
 int RCR_ACPT_ALL ;
 int RXFIFO_EMPTY ;
 int SELECTIVE_SUSPEND ;
 int WORK_ENABLE ;
 int clear_bit (int ,int *) ;
 scalar_t__ delay_autosuspend (struct r8152*) ;
 int napi_disable (struct napi_struct*) ;
 int napi_enable (struct napi_struct*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int ocp_read_byte (struct r8152*,int ,int ) ;
 int ocp_read_dword (struct r8152*,int ,int ) ;
 int ocp_write_dword (struct r8152*,int ,int ,int) ;
 int rtl8152_runtime_resume (struct r8152*) ;
 int rtl_stop_rx (struct r8152*) ;
 int rxdy_gated_en (struct r8152*,int) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int stub1 (struct r8152*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int rtl8152_runtime_suspend(struct r8152 *tp)
{
 struct net_device *netdev = tp->netdev;
 int ret = 0;

 set_bit(SELECTIVE_SUSPEND, &tp->flags);
 smp_mb__after_atomic();

 if (netif_running(netdev) && test_bit(WORK_ENABLE, &tp->flags)) {
  u32 rcr = 0;

  if (netif_carrier_ok(netdev)) {
   u32 ocp_data;

   rcr = ocp_read_dword(tp, MCU_TYPE_PLA, PLA_RCR);
   ocp_data = rcr & ~RCR_ACPT_ALL;
   ocp_write_dword(tp, MCU_TYPE_PLA, PLA_RCR, ocp_data);
   rxdy_gated_en(tp, 1);
   ocp_data = ocp_read_byte(tp, MCU_TYPE_PLA,
       PLA_OOB_CTRL);
   if (!(ocp_data & RXFIFO_EMPTY)) {
    rxdy_gated_en(tp, 0);
    ocp_write_dword(tp, MCU_TYPE_PLA, PLA_RCR, rcr);
    clear_bit(SELECTIVE_SUSPEND, &tp->flags);
    smp_mb__after_atomic();
    ret = -EBUSY;
    goto out1;
   }
  }

  clear_bit(WORK_ENABLE, &tp->flags);
  usb_kill_urb(tp->intr_urb);

  tp->rtl_ops.autosuspend_en(tp, 1);

  if (netif_carrier_ok(netdev)) {
   struct napi_struct *napi = &tp->napi;

   napi_disable(napi);
   rtl_stop_rx(tp);
   rxdy_gated_en(tp, 0);
   ocp_write_dword(tp, MCU_TYPE_PLA, PLA_RCR, rcr);
   napi_enable(napi);
  }

  if (delay_autosuspend(tp)) {
   rtl8152_runtime_resume(tp);
   ret = -EBUSY;
  }
 }

out1:
 return ret;
}
