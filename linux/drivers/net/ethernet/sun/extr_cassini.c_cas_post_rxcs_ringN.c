
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cas_rx_comp {int dummy; } ;
struct cas {int* rx_cur; int* rx_new; int cas_flags; scalar_t__ regs; struct cas_rx_comp** init_rxcs; } ;


 int CAS_FLAG_REG_PLUS ;
 int KERN_DEBUG ;
 scalar_t__ REG_PLUS_RX_COMPN_TAIL (int) ;
 scalar_t__ REG_RX_COMP_HEAD ;
 scalar_t__ REG_RX_COMP_TAIL ;
 int RX_COMP_ENTRY (int,int) ;
 int cas_rxc_init (struct cas_rx_comp*) ;
 int intr ;
 int netif_printk (struct cas*,int ,int ,struct net_device*,char*,int,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cas_post_rxcs_ringN(struct net_device *dev,
    struct cas *cp, int ring)
{
 struct cas_rx_comp *rxc = cp->init_rxcs[ring];
 int last, entry;

 last = cp->rx_cur[ring];
 entry = cp->rx_new[ring];
 netif_printk(cp, intr, KERN_DEBUG, dev,
       "rxc[%d] interrupt, done: %d/%d\n",
       ring, readl(cp->regs + REG_RX_COMP_HEAD), entry);


 while (last != entry) {
  cas_rxc_init(rxc + last);
  last = RX_COMP_ENTRY(ring, last + 1);
 }
 cp->rx_cur[ring] = last;

 if (ring == 0)
  writel(last, cp->regs + REG_RX_COMP_TAIL);
 else if (cp->cas_flags & CAS_FLAG_REG_PLUS)
  writel(last, cp->regs + REG_PLUS_RX_COMPN_TAIL(ring));
}
