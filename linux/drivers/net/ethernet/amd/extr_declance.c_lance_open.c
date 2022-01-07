
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {scalar_t__ irq; int name; scalar_t__ mem_start; } ;
struct lance_regs {int rdp; int rap; } ;
struct lance_private {scalar_t__ dma_irq; int type; struct lance_regs* ll; } ;


 int EAGAIN ;
 int IO_REG_SSR ;
 int IO_SSR_LANCE_DMA_EN ;
 int IRQF_ONESHOT ;
 int LE_C0_STOP ;
 int LE_CSR0 ;
 int fast_mb () ;
 int * filter ;
 int free_irq (scalar_t__,struct net_device*) ;
 int init_restart_lance (struct lance_private*) ;
 int ioasic_read (int ) ;
 int ioasic_ssr_lock ;
 int ioasic_write (int ,int) ;
 int lance_dma_merr_int ;
 int lance_init_ring (struct net_device*) ;
 int lance_interrupt ;
 scalar_t__* lib_ptr (int volatile*,int ,int ) ;
 int load_csrs (struct lance_private*) ;
 int mode ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int printk (char*,int ,scalar_t__) ;
 scalar_t__ request_irq (scalar_t__,int ,int ,char*,struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writereg (int *,int ) ;

__attribute__((used)) static int lance_open(struct net_device *dev)
{
 volatile u16 *ib = (volatile u16 *)dev->mem_start;
 struct lance_private *lp = netdev_priv(dev);
 volatile struct lance_regs *ll = lp->ll;
 int status = 0;


 writereg(&ll->rap, LE_CSR0);
 writereg(&ll->rdp, LE_C0_STOP);







 *lib_ptr(ib, mode, lp->type) = 0;
 *lib_ptr(ib, filter[0], lp->type) = 0;
 *lib_ptr(ib, filter[1], lp->type) = 0;
 *lib_ptr(ib, filter[2], lp->type) = 0;
 *lib_ptr(ib, filter[3], lp->type) = 0;

 lance_init_ring(dev);
 load_csrs(lp);

 netif_start_queue(dev);


 if (request_irq(dev->irq, lance_interrupt, 0, "lance", dev)) {
  printk("%s: Can't get IRQ %d\n", dev->name, dev->irq);
  return -EAGAIN;
 }
 if (lp->dma_irq >= 0) {
  unsigned long flags;

  if (request_irq(lp->dma_irq, lance_dma_merr_int, IRQF_ONESHOT,
    "lance error", dev)) {
   free_irq(dev->irq, dev);
   printk("%s: Can't get DMA IRQ %d\n", dev->name,
    lp->dma_irq);
   return -EAGAIN;
  }

  spin_lock_irqsave(&ioasic_ssr_lock, flags);

  fast_mb();

  ioasic_write(IO_REG_SSR,
        ioasic_read(IO_REG_SSR) | IO_SSR_LANCE_DMA_EN);

  fast_mb();
  spin_unlock_irqrestore(&ioasic_ssr_lock, flags);
 }

 status = init_restart_lance(lp);
 return status;
}
