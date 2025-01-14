
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cobalt {int * irq_dma; scalar_t__ irq_full_fifo; scalar_t__ irq_none; scalar_t__ irq_advout; scalar_t__ irq_adv2; scalar_t__ irq_adv1; scalar_t__ irq_dma_tot; } ;


 int COBALT_NUM_STREAMS ;
 int COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK ;
 int COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK ;
 int COBALT_SYSSTAT_VI0_LOST_DATA_MSK ;
 int COBALT_SYSSTAT_VI1_LOST_DATA_MSK ;
 int COBALT_SYSSTAT_VI2_LOST_DATA_MSK ;
 int COBALT_SYSSTAT_VI3_LOST_DATA_MSK ;
 int COBALT_SYSSTAT_VIHSMA_LOST_DATA_MSK ;
 int COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK ;
 int COBALT_SYS_STAT_MASK ;
 int cobalt_info (char*,scalar_t__,...) ;
 int cobalt_read_bar1 (struct cobalt*,int ) ;
 int cobalt_write_bar1 (struct cobalt*,int ,int) ;
 int memset (int *,int ,int) ;
 int pr_cont (char*,...) ;

void cobalt_irq_log_status(struct cobalt *cobalt)
{
 u32 mask;
 int i;

 cobalt_info("irq: adv1=%u adv2=%u advout=%u none=%u full=%u\n",
      cobalt->irq_adv1, cobalt->irq_adv2, cobalt->irq_advout,
      cobalt->irq_none, cobalt->irq_full_fifo);
 cobalt_info("irq: dma_tot=%u (", cobalt->irq_dma_tot);
 for (i = 0; i < COBALT_NUM_STREAMS; i++)
  pr_cont("%s%u", i ? "/" : "", cobalt->irq_dma[i]);
 pr_cont(")\n");
 cobalt->irq_dma_tot = cobalt->irq_adv1 = cobalt->irq_adv2 = 0;
 cobalt->irq_advout = cobalt->irq_none = cobalt->irq_full_fifo = 0;
 memset(cobalt->irq_dma, 0, sizeof(cobalt->irq_dma));

 mask = cobalt_read_bar1(cobalt, COBALT_SYS_STAT_MASK);
 cobalt_write_bar1(cobalt, COBALT_SYS_STAT_MASK,
   mask |
   COBALT_SYSSTAT_VI0_LOST_DATA_MSK |
   COBALT_SYSSTAT_VI1_LOST_DATA_MSK |
   COBALT_SYSSTAT_VI2_LOST_DATA_MSK |
   COBALT_SYSSTAT_VI3_LOST_DATA_MSK |
   COBALT_SYSSTAT_VIHSMA_LOST_DATA_MSK |
   COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK |
   COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK |
   COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK);
}
