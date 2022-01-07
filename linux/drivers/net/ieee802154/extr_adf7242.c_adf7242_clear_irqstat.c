
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf7242_local {int dummy; } ;


 int IRQ_ADDRESS_VALID ;
 int IRQ_CCA_COMPLETE ;
 int IRQ_CSMA_CA ;
 int IRQ_FRAME_VALID ;
 int IRQ_RX_PKT_RCVD ;
 int IRQ_SFD_RX ;
 int IRQ_SFD_TX ;
 int IRQ_TX_PKT_SENT ;
 int REG_IRQ1_SRC1 ;
 int adf7242_write_reg (struct adf7242_local*,int ,int) ;

__attribute__((used)) static void adf7242_clear_irqstat(struct adf7242_local *lp)
{
 adf7242_write_reg(lp, REG_IRQ1_SRC1, IRQ_CCA_COMPLETE | IRQ_SFD_RX |
     IRQ_SFD_TX | IRQ_RX_PKT_RCVD | IRQ_TX_PKT_SENT |
     IRQ_FRAME_VALID | IRQ_ADDRESS_VALID | IRQ_CSMA_CA);
}
