
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cosa_data {int rxsize; int nchannels; int lock; int dma; int * bouncebuf; int * rxbuf; TYPE_1__* rxchan; int num; TYPE_1__* chan; int name; int rxtx; } ;
struct TYPE_3__ {int num; int * (* setup_rx ) (TYPE_1__*,int) ;} ;


 int DMA_MODE_READ ;
 int DRIVER_RX_READY ;
 int IRQBIT ;
 int RXBIT ;
 int SR_RX_DMA_ENA ;
 int SR_TX_RDY ;
 int SR_USR_INT_ENA ;
 unsigned long claim_dma_lock () ;
 int clear_bit (int ,int *) ;
 int clear_dma_ff (int ) ;
 scalar_t__ cosa_dma_able (TYPE_1__*,int *,int) ;
 int cosa_getdata16 (struct cosa_data*) ;
 int cosa_getdata8 (struct cosa_data*) ;
 int cosa_putdata8 (struct cosa_data*,int ) ;
 int cosa_putstatus (struct cosa_data*,int) ;
 int debug_data_cmd (struct cosa_data*,int ) ;
 int debug_data_in (struct cosa_data*,int) ;
 int debug_status_out (struct cosa_data*,int) ;
 int disable_dma (int ) ;
 int enable_dma (int ) ;
 scalar_t__ is_8bit (struct cosa_data*) ;
 int pr_info (char*,int ,...) ;
 int pr_warn (char*,int ,int) ;
 int put_driver_status_nolock (struct cosa_data*) ;
 int release_dma_lock (unsigned long) ;
 int set_bit (int ,int *) ;
 int set_dma_addr (int ,int ) ;
 int set_dma_count (int ,int) ;
 int set_dma_mode (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * stub1 (TYPE_1__*,int) ;
 int test_bit (int ,int *) ;
 int virt_to_bus (int *) ;

__attribute__((used)) static inline void rx_interrupt(struct cosa_data *cosa, int status)
{
 unsigned long flags;




 spin_lock_irqsave(&cosa->lock, flags);
 set_bit(RXBIT, &cosa->rxtx);

 if (is_8bit(cosa)) {
  if (!test_bit(IRQBIT, &cosa->rxtx)) {
   set_bit(IRQBIT, &cosa->rxtx);
   put_driver_status_nolock(cosa);
   cosa->rxsize = cosa_getdata8(cosa) <<8;



   spin_unlock_irqrestore(&cosa->lock, flags);
   return;
  } else {
   clear_bit(IRQBIT, &cosa->rxtx);
   cosa->rxsize |= cosa_getdata8(cosa) & 0xff;







  }
 } else {
  cosa->rxsize = cosa_getdata16(cosa);







 }
 if (((cosa->rxsize & 0xe000) >> 13) >= cosa->nchannels) {
  pr_warn("%s: rx for unknown channel (0x%04x)\n",
   cosa->name, cosa->rxsize);
  spin_unlock_irqrestore(&cosa->lock, flags);
  goto reject;
 }
 cosa->rxchan = cosa->chan + ((cosa->rxsize & 0xe000) >> 13);
 cosa->rxsize &= 0x1fff;
 spin_unlock_irqrestore(&cosa->lock, flags);

 cosa->rxbuf = ((void*)0);
 if (cosa->rxchan->setup_rx)
  cosa->rxbuf = cosa->rxchan->setup_rx(cosa->rxchan, cosa->rxsize);

 if (!cosa->rxbuf) {
reject:
  pr_info("cosa%d: rejecting packet on channel %d\n",
   cosa->num, cosa->rxchan->num);
  cosa->rxbuf = cosa->bouncebuf;
 }


 flags = claim_dma_lock();
 disable_dma(cosa->dma);
 clear_dma_ff(cosa->dma);
 set_dma_mode(cosa->dma, DMA_MODE_READ);
 if (cosa_dma_able(cosa->rxchan, cosa->rxbuf, cosa->rxsize & 0x1fff)) {
  set_dma_addr(cosa->dma, virt_to_bus(cosa->rxbuf));
 } else {
  set_dma_addr(cosa->dma, virt_to_bus(cosa->bouncebuf));
 }
 set_dma_count(cosa->dma, (cosa->rxsize&0x1fff));
 enable_dma(cosa->dma);
 release_dma_lock(flags);
 spin_lock_irqsave(&cosa->lock, flags);
 cosa_putstatus(cosa, SR_RX_DMA_ENA|SR_USR_INT_ENA);
 if (!is_8bit(cosa) && (status & SR_TX_RDY))
  cosa_putdata8(cosa, DRIVER_RX_READY);





 spin_unlock_irqrestore(&cosa->lock, flags);
}
