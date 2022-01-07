
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ a; } ;
struct TYPE_6__ {TYPE_1__ fddi_canon_addr; int irq; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_8__ {scalar_t__ SharedMemSize; int * LocalRxBuffer; int LocalRxBufferDMA; TYPE_3__ pdev; int * SharedMemAddr; int SharedMemDMA; scalar_t__ SharedMemHeap; int DriverLock; int base_addr; } ;
struct s_smc {TYPE_2__ hw; TYPE_4__ os; } ;
struct net_device {int dev_addr; int irq; int base_addr; } ;
typedef TYPE_4__ skfddi_priv ;


 int EIO ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 scalar_t__ MAX_FRAME_SIZE ;
 int card_stop (struct s_smc*) ;
 void* dma_alloc_coherent (int *,scalar_t__,int *,int ) ;
 int dma_free_coherent (int *,scalar_t__,int *,int ) ;
 scalar_t__ mac_drv_check_space () ;
 scalar_t__ mac_drv_init (struct s_smc*) ;
 int memcpy (int ,scalar_t__,int ) ;
 struct s_smc* netdev_priv (struct net_device*) ;
 int pr_debug (char*,...) ;
 int printk (char*,...) ;
 int read_address (struct s_smc*,int *) ;
 int smt_reset_defaults (struct s_smc*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int skfp_driver_init(struct net_device *dev)
{
 struct s_smc *smc = netdev_priv(dev);
 skfddi_priv *bp = &smc->os;
 int err = -EIO;

 pr_debug("entering skfp_driver_init\n");


 bp->base_addr = dev->base_addr;


 smc->hw.irq = dev->irq;

 spin_lock_init(&bp->DriverLock);


 bp->LocalRxBuffer = dma_alloc_coherent(&bp->pdev.dev, MAX_FRAME_SIZE,
            &bp->LocalRxBufferDMA,
            GFP_ATOMIC);
 if (!bp->LocalRxBuffer) {
  printk("could not allocate mem for ");
  printk("LocalRxBuffer: %d byte\n", MAX_FRAME_SIZE);
  goto fail;
 }


 bp->SharedMemSize = mac_drv_check_space();
 pr_debug("Memory for HWM: %ld\n", bp->SharedMemSize);
 if (bp->SharedMemSize > 0) {
  bp->SharedMemSize += 16;

  bp->SharedMemAddr = dma_alloc_coherent(&bp->pdev.dev,
             bp->SharedMemSize,
             &bp->SharedMemDMA,
             GFP_ATOMIC);
  if (!bp->SharedMemAddr) {
   printk("could not allocate mem for ");
   printk("hardware module: %ld byte\n",
          bp->SharedMemSize);
   goto fail;
  }

 } else {
  bp->SharedMemAddr = ((void*)0);
 }

 bp->SharedMemHeap = 0;

 card_stop(smc);

 pr_debug("mac_drv_init()..\n");
 if (mac_drv_init(smc) != 0) {
  pr_debug("mac_drv_init() failed\n");
  goto fail;
 }
 read_address(smc, ((void*)0));
 pr_debug("HW-Addr: %pMF\n", smc->hw.fddi_canon_addr.a);
 memcpy(dev->dev_addr, smc->hw.fddi_canon_addr.a, ETH_ALEN);

 smt_reset_defaults(smc, 0);

 return 0;

fail:
 if (bp->SharedMemAddr) {
  dma_free_coherent(&bp->pdev.dev,
      bp->SharedMemSize,
      bp->SharedMemAddr,
      bp->SharedMemDMA);
  bp->SharedMemAddr = ((void*)0);
 }
 if (bp->LocalRxBuffer) {
  dma_free_coherent(&bp->pdev.dev, MAX_FRAME_SIZE,
      bp->LocalRxBuffer, bp->LocalRxBufferDMA);
  bp->LocalRxBuffer = ((void*)0);
 }
 return err;
}
