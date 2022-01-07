
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;


 int IGC_MANC ;
 int IGC_MANC_RCV_TCO_EN ;
 int IGC_MPC ;
 int IGC_RCTL ;
 int IGC_RCTL_EN ;
 int IGC_RCTL_LPE ;
 int IGC_RCTL_SBP ;
 int IGC_RFCTL ;
 int IGC_RFCTL_IPV6_EX_DIS ;
 int IGC_RFCTL_LEF ;
 int IGC_RLPML ;
 int IGC_RNBC ;
 int IGC_ROC ;
 int IGC_RXDCTL (int) ;
 int IGC_RXDCTL_QUEUE_ENABLE ;
 int pr_debug (char*) ;
 int rd32 (int ) ;
 int usleep_range (int,int) ;
 int wr32 (int ,int) ;
 int wrfl () ;

void igc_rx_fifo_flush_base(struct igc_hw *hw)
{
 u32 rctl, rlpml, rxdctl[4], rfctl, temp_rctl, rx_enabled;
 int i, ms_wait;


 rfctl = rd32(IGC_RFCTL);
 rfctl |= IGC_RFCTL_IPV6_EX_DIS;
 wr32(IGC_RFCTL, rfctl);

 if (!(rd32(IGC_MANC) & IGC_MANC_RCV_TCO_EN))
  return;


 for (i = 0; i < 4; i++) {
  rxdctl[i] = rd32(IGC_RXDCTL(i));
  wr32(IGC_RXDCTL(i),
       rxdctl[i] & ~IGC_RXDCTL_QUEUE_ENABLE);
 }

 for (ms_wait = 0; ms_wait < 10; ms_wait++) {
  usleep_range(1000, 2000);
  rx_enabled = 0;
  for (i = 0; i < 4; i++)
   rx_enabled |= rd32(IGC_RXDCTL(i));
  if (!(rx_enabled & IGC_RXDCTL_QUEUE_ENABLE))
   break;
 }

 if (ms_wait == 10)
  pr_debug("Queue disable timed out after 10ms\n");





 wr32(IGC_RFCTL, rfctl & ~IGC_RFCTL_LEF);

 rlpml = rd32(IGC_RLPML);
 wr32(IGC_RLPML, 0);

 rctl = rd32(IGC_RCTL);
 temp_rctl = rctl & ~(IGC_RCTL_EN | IGC_RCTL_SBP);
 temp_rctl |= IGC_RCTL_LPE;

 wr32(IGC_RCTL, temp_rctl);
 wr32(IGC_RCTL, temp_rctl | IGC_RCTL_EN);
 wrfl();
 usleep_range(2000, 3000);




 for (i = 0; i < 4; i++)
  wr32(IGC_RXDCTL(i), rxdctl[i]);
 wr32(IGC_RCTL, rctl);
 wrfl();

 wr32(IGC_RLPML, rlpml);
 wr32(IGC_RFCTL, rfctl);


 rd32(IGC_ROC);
 rd32(IGC_RNBC);
 rd32(IGC_MPC);
}
