
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct net_device {int base_addr; int name; } ;
struct hp100_private {TYPE_1__* txring; TYPE_1__* txrtail; TYPE_1__* txrhead; scalar_t__ txrcommit; TYPE_1__* rxring; TYPE_1__* rxrtail; TYPE_1__* rxrhead; scalar_t__ rxrcommit; int * page_vaddr_algn; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ hp100_ring_t ;


 int MAX_RINGSIZE ;
 int MAX_RX_PDL ;
 int MAX_TX_PDL ;
 int TRACE ;
 int hp100_init_rxpdl (struct net_device*,TYPE_1__*,int *) ;
 int hp100_init_txpdl (struct net_device*,TYPE_1__*,int *) ;
 int hp100_outw (int,int ) ;
 int memset (int *,int ,int ) ;
 struct hp100_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ) ;

__attribute__((used)) static void hp100_init_pdls(struct net_device *dev)
{
 struct hp100_private *lp = netdev_priv(dev);
 hp100_ring_t *ringptr;
 u_int *pageptr;
 int i;
 if (!lp->page_vaddr_algn)
  printk("hp100: %s: Warning: lp->page_vaddr_algn not initialised!\n", dev->name);
 else {




  memset(lp->page_vaddr_algn, 0, MAX_RINGSIZE);
  pageptr = lp->page_vaddr_algn;

  lp->rxrcommit = 0;
  ringptr = lp->rxrhead = lp->rxrtail = &(lp->rxring[0]);


  for (i = MAX_RX_PDL - 1; i >= 0; i--) {
   lp->rxring[i].next = ringptr;
   ringptr = &(lp->rxring[i]);
   pageptr += hp100_init_rxpdl(dev, ringptr, pageptr);
  }


  lp->txrcommit = 0;
  ringptr = lp->txrhead = lp->txrtail = &(lp->txring[0]);
  for (i = MAX_TX_PDL - 1; i >= 0; i--) {
   lp->txring[i].next = ringptr;
   ringptr = &(lp->txring[i]);
   pageptr += hp100_init_txpdl(dev, ringptr, pageptr);
  }
 }
}
