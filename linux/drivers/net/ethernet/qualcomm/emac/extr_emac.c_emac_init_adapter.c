
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct emac_adapter {int irq_mod; int automatic; int single_pause_mode; int preamble; int rfd_burst; int tpd_burst; int dmaw_dly_cnt; int dmar_dly_cnt; int dmaw_block; int dmar_block; int dma_order; int rx_desc_cnt; int tx_desc_cnt; int rfd_size; int tpd_size; int rrd_size; } ;


 int DMAR_DLY_CNT_DEF ;
 int DMAW_DLY_CNT_DEF ;
 int EMAC_DEF_RX_DESCS ;
 int EMAC_DEF_RX_IRQ_MOD ;
 int EMAC_DEF_TX_DESCS ;
 int EMAC_DEF_TX_IRQ_MOD ;
 int EMAC_PREAMBLE_DEF ;
 int EMAC_RFD_SIZE ;
 int EMAC_RRD_SIZE ;
 int EMAC_TPD_SIZE ;
 int IRQ_MODERATOR2_INIT_SHFT ;
 int IRQ_MODERATOR_INIT_SHFT ;
 int RXQ0_NUM_RFD_PREF_DEF ;
 int TXQ0_NUM_TPD_PREF_DEF ;
 int emac_dma_ord_out ;
 int emac_dma_req_128 ;
 int emac_dma_req_4096 ;

__attribute__((used)) static void emac_init_adapter(struct emac_adapter *adpt)
{
 u32 reg;

 adpt->rrd_size = EMAC_RRD_SIZE;
 adpt->tpd_size = EMAC_TPD_SIZE;
 adpt->rfd_size = EMAC_RFD_SIZE;


 adpt->tx_desc_cnt = EMAC_DEF_TX_DESCS;
 adpt->rx_desc_cnt = EMAC_DEF_RX_DESCS;


 adpt->dma_order = emac_dma_ord_out;
 adpt->dmar_block = emac_dma_req_4096;
 adpt->dmaw_block = emac_dma_req_128;
 adpt->dmar_dly_cnt = DMAR_DLY_CNT_DEF;
 adpt->dmaw_dly_cnt = DMAW_DLY_CNT_DEF;
 adpt->tpd_burst = TXQ0_NUM_TPD_PREF_DEF;
 adpt->rfd_burst = RXQ0_NUM_RFD_PREF_DEF;


 reg = ((EMAC_DEF_RX_IRQ_MOD >> 1) << IRQ_MODERATOR2_INIT_SHFT) |
       ((EMAC_DEF_TX_IRQ_MOD >> 1) << IRQ_MODERATOR_INIT_SHFT);
 adpt->irq_mod = reg;


 adpt->preamble = EMAC_PREAMBLE_DEF;


 adpt->automatic = 1;


 adpt->single_pause_mode = 0;
}
