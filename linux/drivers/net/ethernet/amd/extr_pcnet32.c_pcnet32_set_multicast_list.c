
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcnet32_private {int options; int lock; TYPE_2__* a; TYPE_1__* init_block; } ;
struct net_device {unsigned long base_addr; int flags; } ;
struct TYPE_4__ {int (* read_csr ) (unsigned long,int ) ;int (* write_csr ) (unsigned long,int ,int) ;} ;
struct TYPE_3__ {void* mode; } ;


 int CSR0 ;
 int CSR0_NORMAL ;
 int CSR0_STOP ;
 int CSR15 ;
 int IFF_PROMISC ;
 int PCNET32_PORT_PORTSEL ;
 void* cpu_to_le16 (int) ;
 int hw ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int netif_info (struct pcnet32_private*,int ,struct net_device*,char*) ;
 int netif_wake_queue (struct net_device*) ;
 int pcnet32_clr_suspend (struct pcnet32_private*,unsigned long) ;
 int pcnet32_load_multicast (struct net_device*) ;
 int pcnet32_restart (struct net_device*,int ) ;
 int pcnet32_suspend (struct net_device*,unsigned long*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (unsigned long,int ) ;
 int stub2 (unsigned long,int ,int) ;
 int stub3 (unsigned long,int ,int) ;
 int stub4 (unsigned long,int ,int) ;

__attribute__((used)) static void pcnet32_set_multicast_list(struct net_device *dev)
{
 unsigned long ioaddr = dev->base_addr, flags;
 struct pcnet32_private *lp = netdev_priv(dev);
 int csr15, suspended;

 spin_lock_irqsave(&lp->lock, flags);
 suspended = pcnet32_suspend(dev, &flags, 0);
 csr15 = lp->a->read_csr(ioaddr, CSR15);
 if (dev->flags & IFF_PROMISC) {

  netif_info(lp, hw, dev, "Promiscuous mode enabled\n");
  lp->init_block->mode =
      cpu_to_le16(0x8000 | (lp->options & PCNET32_PORT_PORTSEL) <<
    7);
  lp->a->write_csr(ioaddr, CSR15, csr15 | 0x8000);
 } else {
  lp->init_block->mode =
      cpu_to_le16((lp->options & PCNET32_PORT_PORTSEL) << 7);
  lp->a->write_csr(ioaddr, CSR15, csr15 & 0x7fff);
  pcnet32_load_multicast(dev);
 }

 if (suspended) {
  pcnet32_clr_suspend(lp, ioaddr);
 } else {
  lp->a->write_csr(ioaddr, CSR0, CSR0_STOP);
  pcnet32_restart(dev, CSR0_NORMAL);
  netif_wake_queue(dev);
 }

 spin_unlock_irqrestore(&lp->lock, flags);
}
