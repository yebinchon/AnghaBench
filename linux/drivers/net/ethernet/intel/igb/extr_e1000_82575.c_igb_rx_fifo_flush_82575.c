
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int E1000_MANC ;
 int E1000_MANC_RCV_TCO_EN ;
 int E1000_MPC ;
 int E1000_RCTL ;
 int E1000_RCTL_EN ;
 int E1000_RCTL_LPE ;
 int E1000_RCTL_SBP ;
 int E1000_RFCTL ;
 int E1000_RFCTL_IPV6_EX_DIS ;
 int E1000_RFCTL_LEF ;
 int E1000_RLPML ;
 int E1000_RNBC ;
 int E1000_ROC ;
 int E1000_RXDCTL (int) ;
 int E1000_RXDCTL_QUEUE_ENABLE ;
 scalar_t__ e1000_82575 ;
 int hw_dbg (char*) ;
 int rd32 (int ) ;
 int usleep_range (int,int) ;
 int wr32 (int ,int) ;
 int wrfl () ;

void igb_rx_fifo_flush_82575(struct e1000_hw *hw)
{
 u32 rctl, rlpml, rxdctl[4], rfctl, temp_rctl, rx_enabled;
 int i, ms_wait;


 rfctl = rd32(E1000_RFCTL);
 rfctl |= E1000_RFCTL_IPV6_EX_DIS;
 wr32(E1000_RFCTL, rfctl);

 if (hw->mac.type != e1000_82575 ||
     !(rd32(E1000_MANC) & E1000_MANC_RCV_TCO_EN))
  return;


 for (i = 0; i < 4; i++) {
  rxdctl[i] = rd32(E1000_RXDCTL(i));
  wr32(E1000_RXDCTL(i),
       rxdctl[i] & ~E1000_RXDCTL_QUEUE_ENABLE);
 }

 for (ms_wait = 0; ms_wait < 10; ms_wait++) {
  usleep_range(1000, 2000);
  rx_enabled = 0;
  for (i = 0; i < 4; i++)
   rx_enabled |= rd32(E1000_RXDCTL(i));
  if (!(rx_enabled & E1000_RXDCTL_QUEUE_ENABLE))
   break;
 }

 if (ms_wait == 10)
  hw_dbg("Queue disable timed out after 10ms\n");





 wr32(E1000_RFCTL, rfctl & ~E1000_RFCTL_LEF);

 rlpml = rd32(E1000_RLPML);
 wr32(E1000_RLPML, 0);

 rctl = rd32(E1000_RCTL);
 temp_rctl = rctl & ~(E1000_RCTL_EN | E1000_RCTL_SBP);
 temp_rctl |= E1000_RCTL_LPE;

 wr32(E1000_RCTL, temp_rctl);
 wr32(E1000_RCTL, temp_rctl | E1000_RCTL_EN);
 wrfl();
 usleep_range(2000, 3000);




 for (i = 0; i < 4; i++)
  wr32(E1000_RXDCTL(i), rxdctl[i]);
 wr32(E1000_RCTL, rctl);
 wrfl();

 wr32(E1000_RLPML, rlpml);
 wr32(E1000_RFCTL, rfctl);


 rd32(E1000_ROC);
 rd32(E1000_RNBC);
 rd32(E1000_MPC);
}
