
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cas {unsigned int* rx_old; int cas_flags; int* rx_last; scalar_t__ regs; TYPE_1__** init_rxds; int rx_inuse_lock; int rx_inuse_list; int link_timer; int dev; TYPE_2__*** rx_pages; } ;
struct TYPE_5__ {int dma_addr; int list; int buffer; } ;
typedef TYPE_2__ cas_page_t ;
struct TYPE_4__ {int buffer; } ;


 int CAS_FLAG_REG_PLUS ;
 int CAS_FLAG_RXD_POST (int) ;
 scalar_t__ CAS_LINK_FAST_TIMEOUT ;
 int ENOMEM ;
 int KERN_DEBUG ;
 int N_RX_DESC_RINGS ;
 scalar_t__ REG_PLUS_RX_KICK1 ;
 scalar_t__ REG_RX_KICK ;
 unsigned int RX_DESC_ENTRY (int,unsigned int) ;
 TYPE_2__* cas_page_dequeue (struct cas*) ;
 int cpu_to_le64 (int ) ;
 int intr ;
 scalar_t__ jiffies ;
 int list_add (int *,int *) ;
 int mod_timer (int *,scalar_t__) ;
 int netif_printk (struct cas*,int ,int ,int ,char*,int,unsigned int) ;
 int page_count (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timer_pending (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int cas_post_rxds_ringN(struct cas *cp, int ring, int num)
{
 unsigned int entry, last, count, released;
 int cluster;
 cas_page_t **page = cp->rx_pages[ring];

 entry = cp->rx_old[ring];

 netif_printk(cp, intr, KERN_DEBUG, cp->dev,
       "rxd[%d] interrupt, done: %d\n", ring, entry);

 cluster = -1;
 count = entry & 0x3;
 last = RX_DESC_ENTRY(ring, num ? entry + num - 4: entry - 4);
 released = 0;
 while (entry != last) {

  if (page_count(page[entry]->buffer) > 1) {
   cas_page_t *new = cas_page_dequeue(cp);
   if (!new) {



    cp->cas_flags |= CAS_FLAG_RXD_POST(ring);
    if (!timer_pending(&cp->link_timer))
     mod_timer(&cp->link_timer, jiffies +
        CAS_LINK_FAST_TIMEOUT);
    cp->rx_old[ring] = entry;
    cp->rx_last[ring] = num ? num - released : 0;
    return -ENOMEM;
   }
   spin_lock(&cp->rx_inuse_lock);
   list_add(&page[entry]->list, &cp->rx_inuse_list);
   spin_unlock(&cp->rx_inuse_lock);
   cp->init_rxds[ring][entry].buffer =
    cpu_to_le64(new->dma_addr);
   page[entry] = new;

  }

  if (++count == 4) {
   cluster = entry;
   count = 0;
  }
  released++;
  entry = RX_DESC_ENTRY(ring, entry + 1);
 }
 cp->rx_old[ring] = entry;

 if (cluster < 0)
  return 0;

 if (ring == 0)
  writel(cluster, cp->regs + REG_RX_KICK);
 else if ((N_RX_DESC_RINGS > 1) &&
   (cp->cas_flags & CAS_FLAG_REG_PLUS))
  writel(cluster, cp->regs + REG_PLUS_RX_KICK1);
 return 0;
}
