
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int u32 ;
struct net_device {int base_addr; int name; } ;
struct hp100_private {scalar_t__ rxrcommit; TYPE_1__* rxrtail; } ;
struct TYPE_3__ {struct TYPE_3__* next; scalar_t__ pdl_paddr; scalar_t__* pdl; } ;
typedef TYPE_1__ hp100_ring_t ;


 scalar_t__ MAX_RX_PDL ;
 int PERFORMANCE ;
 int RX_PDA ;
 int TRACE ;
 scalar_t__ hp100_build_rx_pdl (TYPE_1__*,struct net_device*) ;
 int hp100_outl (int ,int ) ;
 int hp100_outw (int,int ) ;
 int hp100_page (int ) ;
 struct hp100_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ,...) ;

__attribute__((used)) static void hp100_rxfill(struct net_device *dev)
{
 int ioaddr = dev->base_addr;

 struct hp100_private *lp = netdev_priv(dev);
 hp100_ring_t *ringptr;






 hp100_page(PERFORMANCE);

 while (lp->rxrcommit < MAX_RX_PDL) {



  ringptr = lp->rxrtail;
  if (0 == hp100_build_rx_pdl(ringptr, dev)) {
   return;
  }
  hp100_outl((u32) ringptr->pdl_paddr, RX_PDA);

  lp->rxrcommit += 1;
  lp->rxrtail = ringptr->next;
 }
}
