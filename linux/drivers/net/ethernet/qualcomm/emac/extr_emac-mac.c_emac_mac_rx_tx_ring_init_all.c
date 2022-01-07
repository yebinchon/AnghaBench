
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_6__ {int consume_shift; int consume_mask; int consume_reg; int produce_shift; int produce_mask; int produce_reg; } ;
struct TYPE_5__ {int mask; } ;
struct TYPE_4__ {int intr; TYPE_2__* irq; int consume_shift; int consume_mask; int consume_reg; int process_shft; int process_mask; void* process_reg; int produce_shift; int produce_mask; void* produce_reg; int netdev; } ;
struct emac_adapter {TYPE_3__ tx_q; TYPE_2__ irq; TYPE_1__ rx_q; int netdev; } ;


 void* EMAC_MAILBOX_0 ;
 int EMAC_MAILBOX_15 ;
 int EMAC_MAILBOX_2 ;
 int EMAC_MAILBOX_3 ;
 int ISR_RX_PKT ;
 int NTPD_CONS_IDX_BMSK ;
 int NTPD_CONS_IDX_SHFT ;
 int NTPD_PROD_IDX_BMSK ;
 int NTPD_PROD_IDX_SHFT ;
 int RFD0_CONS_IDX_BMSK ;
 int RFD0_CONS_IDX_SHFT ;
 int RFD0_PROC_IDX_BMSK ;
 int RFD0_PROC_IDX_SHFT ;
 int RFD0_PROD_IDX_BMSK ;
 int RFD0_PROD_IDX_SHFT ;

void emac_mac_rx_tx_ring_init_all(struct platform_device *pdev,
      struct emac_adapter *adpt)
{
 adpt->rx_q.netdev = adpt->netdev;

 adpt->rx_q.produce_reg = EMAC_MAILBOX_0;
 adpt->rx_q.produce_mask = RFD0_PROD_IDX_BMSK;
 adpt->rx_q.produce_shift = RFD0_PROD_IDX_SHFT;

 adpt->rx_q.process_reg = EMAC_MAILBOX_0;
 adpt->rx_q.process_mask = RFD0_PROC_IDX_BMSK;
 adpt->rx_q.process_shft = RFD0_PROC_IDX_SHFT;

 adpt->rx_q.consume_reg = EMAC_MAILBOX_3;
 adpt->rx_q.consume_mask = RFD0_CONS_IDX_BMSK;
 adpt->rx_q.consume_shift = RFD0_CONS_IDX_SHFT;

 adpt->rx_q.irq = &adpt->irq;
 adpt->rx_q.intr = adpt->irq.mask & ISR_RX_PKT;

 adpt->tx_q.produce_reg = EMAC_MAILBOX_15;
 adpt->tx_q.produce_mask = NTPD_PROD_IDX_BMSK;
 adpt->tx_q.produce_shift = NTPD_PROD_IDX_SHFT;

 adpt->tx_q.consume_reg = EMAC_MAILBOX_2;
 adpt->tx_q.consume_mask = NTPD_CONS_IDX_BMSK;
 adpt->tx_q.consume_shift = NTPD_CONS_IDX_SHFT;
}
