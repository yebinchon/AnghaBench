
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cobalt_stream {unsigned int dma_fifo_mask; int dma_channel; int adv_irq_mask; int q; int flags; scalar_t__ is_audio; } ;
struct cobalt {int irq_none; int irq_dma_tot; int irq_advout; int irq_adv2; int irq_adv1; int irq_work_queue; int irq_work_queues; int irq_full_fifo; int * irq_dma; struct cobalt_stream* streams; } ;
typedef int irqreturn_t ;


 int COBALT_NUM_STREAMS ;
 int COBALT_STREAM_FL_ADV_IRQ ;
 int COBALT_SYSSTAT_VI0_INT1_MSK ;
 int COBALT_SYSSTAT_VI0_INT2_MSK ;
 int COBALT_SYSSTAT_VI1_INT1_MSK ;
 int COBALT_SYSSTAT_VI1_INT2_MSK ;
 int COBALT_SYSSTAT_VI2_INT1_MSK ;
 int COBALT_SYSSTAT_VI2_INT2_MSK ;
 int COBALT_SYSSTAT_VI3_INT1_MSK ;
 int COBALT_SYSSTAT_VI3_INT2_MSK ;
 int COBALT_SYSSTAT_VIHSMA_INT1_MSK ;
 int COBALT_SYSSTAT_VIHSMA_INT2_MSK ;
 int COBALT_SYSSTAT_VOHSMA_INT1_MSK ;
 int COBALT_SYS_STAT_EDGE ;
 int COBALT_SYS_STAT_MASK ;
 int DMA_INTERRUPT_STATUS_REG ;
 int IRQ_HANDLED ;
 int cobalt_dma_stream_queue_handler (struct cobalt_stream*) ;
 int cobalt_info (char*,int) ;
 int cobalt_read_bar0 (struct cobalt*,int ) ;
 int cobalt_read_bar1 (struct cobalt*,int ) ;
 int cobalt_write_bar0 (struct cobalt*,int ,int) ;
 int cobalt_write_bar1 (struct cobalt*,int ,int) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ vb2_is_streaming (int *) ;

irqreturn_t cobalt_irq_handler(int irq, void *dev_id)
{
 struct cobalt *cobalt = (struct cobalt *)dev_id;
 u32 dma_interrupt =
  cobalt_read_bar0(cobalt, DMA_INTERRUPT_STATUS_REG) & 0xffff;
 u32 mask = cobalt_read_bar1(cobalt, COBALT_SYS_STAT_MASK);
 u32 edge = cobalt_read_bar1(cobalt, COBALT_SYS_STAT_EDGE);
 int i;


 cobalt_write_bar0(cobalt, DMA_INTERRUPT_STATUS_REG, dma_interrupt);
 cobalt_write_bar1(cobalt, COBALT_SYS_STAT_MASK, mask & ~edge);
 cobalt_write_bar1(cobalt, COBALT_SYS_STAT_EDGE, edge);

 for (i = 0; i < COBALT_NUM_STREAMS; i++) {
  struct cobalt_stream *s = &cobalt->streams[i];
  unsigned dma_fifo_mask = s->dma_fifo_mask;

  if (dma_interrupt & (1 << s->dma_channel)) {
   cobalt->irq_dma[i]++;


   cobalt_dma_stream_queue_handler(s);
   if (!s->is_audio) {
    edge &= ~dma_fifo_mask;
    cobalt_write_bar1(cobalt, COBALT_SYS_STAT_MASK,
        mask & ~edge);
   }
  }
  if (s->is_audio)
   continue;
  if (edge & s->adv_irq_mask)
   set_bit(COBALT_STREAM_FL_ADV_IRQ, &s->flags);
  if ((edge & mask & dma_fifo_mask) && vb2_is_streaming(&s->q)) {
   cobalt_info("full rx FIFO %d\n", i);
   cobalt->irq_full_fifo++;
  }
 }

 queue_work(cobalt->irq_work_queues, &cobalt->irq_work_queue);

 if (edge & mask & (COBALT_SYSSTAT_VI0_INT1_MSK |
      COBALT_SYSSTAT_VI1_INT1_MSK |
      COBALT_SYSSTAT_VI2_INT1_MSK |
      COBALT_SYSSTAT_VI3_INT1_MSK |
      COBALT_SYSSTAT_VIHSMA_INT1_MSK |
      COBALT_SYSSTAT_VOHSMA_INT1_MSK))
  cobalt->irq_adv1++;
 if (edge & mask & (COBALT_SYSSTAT_VI0_INT2_MSK |
      COBALT_SYSSTAT_VI1_INT2_MSK |
      COBALT_SYSSTAT_VI2_INT2_MSK |
      COBALT_SYSSTAT_VI3_INT2_MSK |
      COBALT_SYSSTAT_VIHSMA_INT2_MSK))
  cobalt->irq_adv2++;
 if (edge & mask & COBALT_SYSSTAT_VOHSMA_INT1_MSK)
  cobalt->irq_advout++;
 if (dma_interrupt)
  cobalt->irq_dma_tot++;
 if (!(edge & mask) && !dma_interrupt)
  cobalt->irq_none++;
 dma_interrupt = cobalt_read_bar0(cobalt, DMA_INTERRUPT_STATUS_REG);

 return IRQ_HANDLED;
}
