
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dma; int base_addr; } ;


 int DMA_MODE_WRITE ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int) ;
 int disable_dma (int) ;
 int enable_dma (int) ;
 int get_dma_residue (int) ;
 int inb_p (int) ;
 int ltdmabuf ;
 int printk (char*,int ) ;
 int release_dma_lock (unsigned long) ;
 int set_dma_addr (int,int ) ;
 int set_dma_count (int,int) ;
 int set_dma_mode (int,int ) ;
 int virt_to_bus (int ) ;
 scalar_t__ wait_timeout (struct net_device*,int) ;

__attribute__((used)) static void handlewrite(struct net_device *dev)
{


 int dma = dev->dma;
 int base = dev->base_addr;
 unsigned long flags;

 flags=claim_dma_lock();
 disable_dma(dma);
 clear_dma_ff(dma);
 set_dma_mode(dma,DMA_MODE_WRITE);
 set_dma_addr(dma,virt_to_bus(ltdmabuf));
 set_dma_count(dma,800);
 enable_dma(dma);
 release_dma_lock(flags);

 inb_p(base+3);
 inb_p(base+2);

 if ( wait_timeout(dev,0xfb) ) {
  flags=claim_dma_lock();
  printk("timed out in handlewrite, dma res %d\n",
   get_dma_residue(dev->dma) );
  release_dma_lock(flags);
 }
}
