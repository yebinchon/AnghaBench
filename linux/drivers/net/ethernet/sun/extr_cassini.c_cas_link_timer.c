
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct timer_list {int dummy; } ;
struct cas {scalar_t__ link_transition_jiffies; int cas_flags; int lock; int link_timer; int reset_task; int reset_task_pending; int reset_task_pending_all; int dev; scalar_t__ regs; int phy_type; int * rx_last; int reset_task_pending_mtu; int reset_task_pending_spare; int hw_running; scalar_t__ link_transition_jiffies_valid; } ;


 int CAS_FLAG_RXD_POST (int) ;
 int CAS_FLAG_RXD_POST_MASK ;
 scalar_t__ CAS_LINK_TIMEOUT ;
 scalar_t__ CAS_PHY_MII (int ) ;
 int CAS_RESET_ALL ;
 int CAS_VAL (int ,int) ;
 int KERN_DEBUG ;
 int MAC_SM_ENCAP_SM ;
 int MAC_SM_TLM ;
 int MAC_TX_FRAME_XMIT ;
 int MAX_RX_DESC_RINGS ;
 int MII_BMSR ;
 scalar_t__ REG_MAC_STATE_MACHINE ;
 scalar_t__ REG_MAC_TX_STATUS ;
 scalar_t__ REG_MIF_STATUS ;
 scalar_t__ REG_TX_FIFO_PKT_CNT ;
 scalar_t__ REG_TX_FIFO_READ_PTR ;
 scalar_t__ REG_TX_FIFO_WRITE_PTR ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int cas_entropy_gather (struct cas*) ;
 int cas_hard_reset (struct cas*) ;
 int cas_lock_tx (struct cas*) ;
 int cas_mif_poll (struct cas*,int) ;
 int cas_mii_link_check (struct cas*,int ) ;
 int cas_pcs_link_check (struct cas*) ;
 int cas_phy_read (struct cas*,int ) ;
 scalar_t__ cas_post_rxds_ringN (struct cas*,int,int ) ;
 int cas_unlock_tx (struct cas*) ;
 struct cas* cp ;
 struct cas* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int link_timer ;
 scalar_t__ link_transition_timeout ;
 int mod_timer (int *,scalar_t__) ;
 int netif_printk (struct cas*,int ,int ,int ,char*,int,...) ;
 int pr_err (char*) ;
 int readl (scalar_t__) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_err ;

__attribute__((used)) static void cas_link_timer(struct timer_list *t)
{
 struct cas *cp = from_timer(cp, t, link_timer);
 int mask, pending = 0, reset = 0;
 unsigned long flags;

 if (link_transition_timeout != 0 &&
     cp->link_transition_jiffies_valid &&
     ((jiffies - cp->link_transition_jiffies) >
       (link_transition_timeout))) {




  cp->link_transition_jiffies_valid = 0;
 }

 if (!cp->hw_running)
  return;

 spin_lock_irqsave(&cp->lock, flags);
 cas_lock_tx(cp);
 cas_entropy_gather(cp);





 if (atomic_read(&cp->reset_task_pending_all) ||
     atomic_read(&cp->reset_task_pending_spare) ||
     atomic_read(&cp->reset_task_pending_mtu))
  goto done;






 if ((mask = (cp->cas_flags & CAS_FLAG_RXD_POST_MASK))) {
  int i, rmask;

  for (i = 0; i < MAX_RX_DESC_RINGS; i++) {
   rmask = CAS_FLAG_RXD_POST(i);
   if ((mask & rmask) == 0)
    continue;


   if (cas_post_rxds_ringN(cp, i, cp->rx_last[i]) < 0) {
    pending = 1;
    continue;
   }
   cp->cas_flags &= ~rmask;
  }
 }

 if (CAS_PHY_MII(cp->phy_type)) {
  u16 bmsr;
  cas_mif_poll(cp, 0);
  bmsr = cas_phy_read(cp, MII_BMSR);





  bmsr = cas_phy_read(cp, MII_BMSR);
  cas_mif_poll(cp, 1);
  readl(cp->regs + REG_MIF_STATUS);
  reset = cas_mii_link_check(cp, bmsr);
 } else {
  reset = cas_pcs_link_check(cp);
 }

 if (reset)
  goto done;


 if ((readl(cp->regs + REG_MAC_TX_STATUS) & MAC_TX_FRAME_XMIT) == 0) {
  u32 val = readl(cp->regs + REG_MAC_STATE_MACHINE);
  u32 wptr, rptr;
  int tlm = CAS_VAL(MAC_SM_TLM, val);

  if (((tlm == 0x5) || (tlm == 0x3)) &&
      (CAS_VAL(MAC_SM_ENCAP_SM, val) == 0)) {
   netif_printk(cp, tx_err, KERN_DEBUG, cp->dev,
         "tx err: MAC_STATE[%08x]\n", val);
   reset = 1;
   goto done;
  }

  val = readl(cp->regs + REG_TX_FIFO_PKT_CNT);
  wptr = readl(cp->regs + REG_TX_FIFO_WRITE_PTR);
  rptr = readl(cp->regs + REG_TX_FIFO_READ_PTR);
  if ((val == 0) && (wptr != rptr)) {
   netif_printk(cp, tx_err, KERN_DEBUG, cp->dev,
         "tx err: TX_FIFO[%08x:%08x:%08x]\n",
         val, wptr, rptr);
   reset = 1;
  }

  if (reset)
   cas_hard_reset(cp);
 }

done:
 if (reset) {

  atomic_inc(&cp->reset_task_pending);
  atomic_inc(&cp->reset_task_pending_all);
  schedule_work(&cp->reset_task);





 }

 if (!pending)
  mod_timer(&cp->link_timer, jiffies + CAS_LINK_TIMEOUT);
 cas_unlock_tx(cp);
 spin_unlock_irqrestore(&cp->lock, flags);
}
