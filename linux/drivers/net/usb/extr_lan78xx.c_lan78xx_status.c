
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct urb {int actual_length; int transfer_buffer; } ;
struct TYPE_2__ {scalar_t__ phyirq; } ;
struct lan78xx_net {int net; TYPE_1__ domain_data; } ;


 int EVENT_LINK_RESET ;
 int INT_ENP_PHY_INT ;
 int generic_handle_irq (scalar_t__) ;
 int get_unaligned_le32 (int ) ;
 int lan78xx_defer_kevent (struct lan78xx_net*,int ) ;
 int link ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int netdev_warn (int ,char*,int) ;
 int netif_dbg (struct lan78xx_net*,int ,int ,char*,int) ;

__attribute__((used)) static void lan78xx_status(struct lan78xx_net *dev, struct urb *urb)
{
 u32 intdata;

 if (urb->actual_length != 4) {
  netdev_warn(dev->net,
       "unexpected urb length %d", urb->actual_length);
  return;
 }

 intdata = get_unaligned_le32(urb->transfer_buffer);

 if (intdata & INT_ENP_PHY_INT) {
  netif_dbg(dev, link, dev->net, "PHY INTR: 0x%08x\n", intdata);
  lan78xx_defer_kevent(dev, EVENT_LINK_RESET);

  if (dev->domain_data.phyirq > 0) {
   local_irq_disable();
   generic_handle_irq(dev->domain_data.phyirq);
   local_irq_enable();
  }
 } else
  netdev_warn(dev->net,
       "unexpected interrupt: 0x%08x\n", intdata);
}
