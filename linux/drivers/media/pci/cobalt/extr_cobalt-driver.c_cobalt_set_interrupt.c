
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cobalt {scalar_t__ have_hsma_tx; scalar_t__ have_hsma_rx; } ;


 unsigned int COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK ;
 unsigned int COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK ;
 unsigned int COBALT_SYSSTAT_VI0_INT1_MSK ;
 unsigned int COBALT_SYSSTAT_VI0_INT2_MSK ;
 unsigned int COBALT_SYSSTAT_VI0_LOST_DATA_MSK ;
 unsigned int COBALT_SYSSTAT_VI1_INT1_MSK ;
 unsigned int COBALT_SYSSTAT_VI1_INT2_MSK ;
 unsigned int COBALT_SYSSTAT_VI1_LOST_DATA_MSK ;
 unsigned int COBALT_SYSSTAT_VI2_INT1_MSK ;
 unsigned int COBALT_SYSSTAT_VI2_INT2_MSK ;
 unsigned int COBALT_SYSSTAT_VI2_LOST_DATA_MSK ;
 unsigned int COBALT_SYSSTAT_VI3_INT1_MSK ;
 unsigned int COBALT_SYSSTAT_VI3_INT2_MSK ;
 unsigned int COBALT_SYSSTAT_VI3_LOST_DATA_MSK ;
 unsigned int COBALT_SYSSTAT_VIHSMA_INT1_MSK ;
 unsigned int COBALT_SYSSTAT_VIHSMA_INT2_MSK ;
 unsigned int COBALT_SYSSTAT_VIHSMA_LOST_DATA_MSK ;
 unsigned int COBALT_SYSSTAT_VOHSMA_INT1_MSK ;
 unsigned int COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK ;
 int COBALT_SYS_STAT_EDGE ;
 int COBALT_SYS_STAT_MASK ;
 int cobalt_write_bar1 (struct cobalt*,int ,unsigned int) ;

__attribute__((used)) static void cobalt_set_interrupt(struct cobalt *cobalt, bool enable)
{
 if (enable) {
  unsigned irqs = COBALT_SYSSTAT_VI0_INT1_MSK |
    COBALT_SYSSTAT_VI1_INT1_MSK |
    COBALT_SYSSTAT_VI2_INT1_MSK |
    COBALT_SYSSTAT_VI3_INT1_MSK |
    COBALT_SYSSTAT_VI0_INT2_MSK |
    COBALT_SYSSTAT_VI1_INT2_MSK |
    COBALT_SYSSTAT_VI2_INT2_MSK |
    COBALT_SYSSTAT_VI3_INT2_MSK |
    COBALT_SYSSTAT_VI0_LOST_DATA_MSK |
    COBALT_SYSSTAT_VI1_LOST_DATA_MSK |
    COBALT_SYSSTAT_VI2_LOST_DATA_MSK |
    COBALT_SYSSTAT_VI3_LOST_DATA_MSK |
    COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK;

  if (cobalt->have_hsma_rx)
   irqs |= COBALT_SYSSTAT_VIHSMA_INT1_MSK |
    COBALT_SYSSTAT_VIHSMA_INT2_MSK |
    COBALT_SYSSTAT_VIHSMA_LOST_DATA_MSK;

  if (cobalt->have_hsma_tx)
   irqs |= COBALT_SYSSTAT_VOHSMA_INT1_MSK |
    COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK |
    COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK;

  cobalt_write_bar1(cobalt, COBALT_SYS_STAT_EDGE, 0xffffffff);


  cobalt_write_bar1(cobalt, COBALT_SYS_STAT_MASK, irqs);
 } else {

  cobalt_write_bar1(cobalt, COBALT_SYS_STAT_MASK, 0);
 }
}
