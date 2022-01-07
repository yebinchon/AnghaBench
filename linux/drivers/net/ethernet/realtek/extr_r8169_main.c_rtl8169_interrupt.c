
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; } ;
struct rtl8169_private {int irq_mask; scalar_t__ mac_version; int napi; TYPE_1__ wk; int dev; int phydev; int irq_enabled; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LinkChg ;
 int RTL_FLAG_TASK_RESET_PENDING ;
 scalar_t__ RTL_GIGA_MAC_VER_11 ;
 int RxFIFOOver ;
 int SYSErr ;
 int napi_schedule_irqoff (int *) ;
 int netif_stop_queue (int ) ;
 int phy_mac_interrupt (int ) ;
 int rtl8169_pcierr_interrupt (int ) ;
 int rtl_ack_events (struct rtl8169_private*,int) ;
 int rtl_get_events (struct rtl8169_private*) ;
 int rtl_irq_disable (struct rtl8169_private*) ;
 int set_bit (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t rtl8169_interrupt(int irq, void *dev_instance)
{
 struct rtl8169_private *tp = dev_instance;
 u32 status = rtl_get_events(tp);

 if (!tp->irq_enabled || (status & 0xffff) == 0xffff ||
     !(status & tp->irq_mask))
  return IRQ_NONE;

 if (unlikely(status & SYSErr)) {
  rtl8169_pcierr_interrupt(tp->dev);
  goto out;
 }

 if (status & LinkChg)
  phy_mac_interrupt(tp->phydev);

 if (unlikely(status & RxFIFOOver &&
     tp->mac_version == RTL_GIGA_MAC_VER_11)) {
  netif_stop_queue(tp->dev);

  set_bit(RTL_FLAG_TASK_RESET_PENDING, tp->wk.flags);
 }

 rtl_irq_disable(tp);
 napi_schedule_irqoff(&tp->napi);
out:
 rtl_ack_events(tp, status);

 return IRQ_HANDLED;
}
