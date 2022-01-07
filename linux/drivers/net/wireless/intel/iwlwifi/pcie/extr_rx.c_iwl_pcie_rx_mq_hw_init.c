
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans_pcie {int rx_buf_size; TYPE_1__* rxq; } ;
struct iwl_trans {int num_rx_queues; TYPE_2__* cfg; } ;
struct TYPE_4__ {scalar_t__ integrated; } ;
struct TYPE_3__ {int rb_stts_dma; int used_bd_dma; int bd_dma; } ;


 int BIT (int) ;
 int CSR_INT_COALESCING ;
 int DEFAULT_RXQ_NUM ;




 int IWL_HOST_INT_TIMEOUT_DEF ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int RB_CHUNK_SIZE ;
 int RFH_DMA_EN_ENABLE_VAL ;
 int RFH_GEN_CFG ;
 int RFH_GEN_CFG_RB_CHUNK_SIZE_128 ;
 int RFH_GEN_CFG_RB_CHUNK_SIZE_64 ;
 int RFH_GEN_CFG_RFH_DMA_SNOOP ;
 int RFH_GEN_CFG_SERVICE_DMA_SNOOP ;
 int RFH_GEN_CFG_VAL (int ,int ) ;
 int RFH_Q_FRBDCB_BA_LSB (int) ;
 int RFH_Q_FRBDCB_RIDX (int) ;
 int RFH_Q_FRBDCB_WIDX (int) ;
 int RFH_Q_URBDCB_BA_LSB (int) ;
 int RFH_Q_URBDCB_WIDX (int) ;
 int RFH_Q_URBD_STTS_WPTR_LSB (int) ;
 int RFH_RXF_DMA_CFG ;
 int RFH_RXF_DMA_DROP_TOO_LARGE_MASK ;
 int RFH_RXF_DMA_MIN_RB_4_8 ;
 int RFH_RXF_DMA_RBDCB_SIZE_512 ;
 int RFH_RXF_DMA_RB_SIZE_12K ;
 int RFH_RXF_DMA_RB_SIZE_2K ;
 int RFH_RXF_DMA_RB_SIZE_4K ;
 int RFH_RXF_DMA_RB_SIZE_8K ;
 int RFH_RXF_RXQ_ACTIVE ;
 int WARN_ON (int) ;
 int iwl_trans_grab_nic_access (struct iwl_trans*,unsigned long*) ;
 int iwl_trans_release_nic_access (struct iwl_trans*,unsigned long*) ;
 int iwl_write8 (struct iwl_trans*,int ,int ) ;
 int iwl_write_prph64_no_grab (struct iwl_trans*,int ,int ) ;
 int iwl_write_prph_no_grab (struct iwl_trans*,int ,int) ;

__attribute__((used)) static void iwl_pcie_rx_mq_hw_init(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 u32 rb_size, enabled = 0;
 unsigned long flags;
 int i;

 switch (trans_pcie->rx_buf_size) {
 case 130:
  rb_size = RFH_RXF_DMA_RB_SIZE_2K;
  break;
 case 129:
  rb_size = RFH_RXF_DMA_RB_SIZE_4K;
  break;
 case 128:
  rb_size = RFH_RXF_DMA_RB_SIZE_8K;
  break;
 case 131:
  rb_size = RFH_RXF_DMA_RB_SIZE_12K;
  break;
 default:
  WARN_ON(1);
  rb_size = RFH_RXF_DMA_RB_SIZE_4K;
 }

 if (!iwl_trans_grab_nic_access(trans, &flags))
  return;


 iwl_write_prph_no_grab(trans, RFH_RXF_DMA_CFG, 0);

 iwl_write_prph_no_grab(trans, RFH_RXF_RXQ_ACTIVE, 0);

 for (i = 0; i < trans->num_rx_queues; i++) {

  iwl_write_prph64_no_grab(trans,
      RFH_Q_FRBDCB_BA_LSB(i),
      trans_pcie->rxq[i].bd_dma);

  iwl_write_prph64_no_grab(trans,
      RFH_Q_URBDCB_BA_LSB(i),
      trans_pcie->rxq[i].used_bd_dma);

  iwl_write_prph64_no_grab(trans,
      RFH_Q_URBD_STTS_WPTR_LSB(i),
      trans_pcie->rxq[i].rb_stts_dma);

  iwl_write_prph_no_grab(trans, RFH_Q_FRBDCB_WIDX(i), 0);
  iwl_write_prph_no_grab(trans, RFH_Q_FRBDCB_RIDX(i), 0);
  iwl_write_prph_no_grab(trans, RFH_Q_URBDCB_WIDX(i), 0);

  enabled |= BIT(i) | BIT(i + 16);
 }
 iwl_write_prph_no_grab(trans, RFH_RXF_DMA_CFG,
          RFH_DMA_EN_ENABLE_VAL | rb_size |
          RFH_RXF_DMA_MIN_RB_4_8 |
          RFH_RXF_DMA_DROP_TOO_LARGE_MASK |
          RFH_RXF_DMA_RBDCB_SIZE_512);






 iwl_write_prph_no_grab(trans, RFH_GEN_CFG,
          RFH_GEN_CFG_RFH_DMA_SNOOP |
          RFH_GEN_CFG_VAL(DEFAULT_RXQ_NUM, 0) |
          RFH_GEN_CFG_SERVICE_DMA_SNOOP |
          RFH_GEN_CFG_VAL(RB_CHUNK_SIZE,
            trans->cfg->integrated ?
            RFH_GEN_CFG_RB_CHUNK_SIZE_64 :
            RFH_GEN_CFG_RB_CHUNK_SIZE_128));

 iwl_write_prph_no_grab(trans, RFH_RXF_RXQ_ACTIVE, enabled);

 iwl_trans_release_nic_access(trans, &flags);


 iwl_write8(trans, CSR_INT_COALESCING, IWL_HOST_INT_TIMEOUT_DEF);
}
