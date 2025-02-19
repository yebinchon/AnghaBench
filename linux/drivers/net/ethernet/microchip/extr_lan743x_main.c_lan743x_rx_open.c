
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lan743x_rx {int ring_size; int vector_flags; int last_tail; int last_head; int napi; int channel_number; int head_dma_ptr; int ring_dma_ptr; scalar_t__ frame_count; struct lan743x_adapter* adapter; } ;
struct TYPE_2__ {int flags; } ;
struct lan743x_adapter {TYPE_1__ csr; int netdev; } ;


 int DMAC_CMD ;
 int DMAC_CMD_RX_SWR_ (int ) ;
 int DMAC_CMD_START_R_ (int ) ;
 int DMAC_INT_BIT_RXFRM_ (int ) ;
 int DMAC_INT_EN_SET ;
 int DMAC_INT_STS ;
 int DMA_ADDR_HIGH32 (int ) ;
 int DMA_ADDR_LOW32 (int ) ;
 int EIO ;
 int FCT_FLOW (int ) ;
 int FCT_FLOW_CTL_OFF_THRESHOLD_SET_ (int) ;
 int FCT_FLOW_CTL_ON_THRESHOLD_SET_ (int) ;
 int FCT_FLOW_CTL_REQ_EN_ ;
 int FCT_RX_CTL ;
 int FCT_RX_CTL_EN_ (int ) ;
 int FCT_RX_CTL_RESET_ (int ) ;
 int INT_BIT_DMA_RX_ (int ) ;
 int INT_EN_SET ;
 int LAN743X_CSR_FLAG_IS_A0 ;
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR ;
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C ;
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR ;
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C ;
 int RX_BASE_ADDRH (int ) ;
 int RX_BASE_ADDRL (int ) ;
 int RX_CFG_A (int ) ;
 int RX_CFG_A_RX_HP_WB_EN_ ;
 int RX_CFG_A_RX_PF_PRI_THRES_SET_ (int) ;
 int RX_CFG_A_RX_PF_THRES_SET_ (int) ;
 int RX_CFG_A_RX_WB_ON_INT_TMR_ ;
 int RX_CFG_A_RX_WB_THRES_SET_ (int) ;
 int RX_CFG_B (int ) ;
 int RX_CFG_B_RDMABL_512_ ;
 int RX_CFG_B_RX_PAD_0_ ;
 int RX_CFG_B_RX_PAD_2_ ;
 int RX_CFG_B_RX_PAD_MASK_ ;
 int RX_CFG_B_RX_RING_LEN_MASK_ ;
 int RX_CFG_B_TS_ALL_RX_ ;
 int RX_CFG_C (int ) ;
 int RX_CFG_C_RX_DMA_INT_STS_AUTO_CLR_ ;
 int RX_CFG_C_RX_INT_EN_R2C_ ;
 int RX_CFG_C_RX_INT_STS_R2C_MODE_MASK_ ;
 int RX_CFG_C_RX_TOP_INT_EN_AUTO_CLR_ ;
 int RX_HEAD (int ) ;
 int RX_HEAD_PADDING ;
 int RX_HEAD_WRITEBACK_ADDRH (int ) ;
 int RX_HEAD_WRITEBACK_ADDRL (int ) ;
 int RX_TAIL (int ) ;
 void* lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_wait_for_bit (struct lan743x_adapter*,int ,int,int ,int,int,int) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int lan743x_intr_get_vector_flags (struct lan743x_adapter*,int) ;
 int lan743x_rx_napi_poll ;
 int lan743x_rx_ring_cleanup (struct lan743x_rx*) ;
 int lan743x_rx_ring_init (struct lan743x_rx*) ;
 int napi_enable (int *) ;
 int netif_napi_add (int ,int *,int ,int) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static int lan743x_rx_open(struct lan743x_rx *rx)
{
 struct lan743x_adapter *adapter = rx->adapter;
 u32 data = 0;
 int ret;

 rx->frame_count = 0;
 ret = lan743x_rx_ring_init(rx);
 if (ret)
  goto return_error;

 netif_napi_add(adapter->netdev,
         &rx->napi, lan743x_rx_napi_poll,
         rx->ring_size - 1);

 lan743x_csr_write(adapter, DMAC_CMD,
     DMAC_CMD_RX_SWR_(rx->channel_number));
 lan743x_csr_wait_for_bit(adapter, DMAC_CMD,
     DMAC_CMD_RX_SWR_(rx->channel_number),
     0, 1000, 20000, 100);


 lan743x_csr_write(adapter,
     RX_BASE_ADDRH(rx->channel_number),
     DMA_ADDR_HIGH32(rx->ring_dma_ptr));
 lan743x_csr_write(adapter,
     RX_BASE_ADDRL(rx->channel_number),
     DMA_ADDR_LOW32(rx->ring_dma_ptr));


 lan743x_csr_write(adapter,
     RX_HEAD_WRITEBACK_ADDRH(rx->channel_number),
     DMA_ADDR_HIGH32(rx->head_dma_ptr));
 lan743x_csr_write(adapter,
     RX_HEAD_WRITEBACK_ADDRL(rx->channel_number),
     DMA_ADDR_LOW32(rx->head_dma_ptr));
 data = RX_CFG_A_RX_HP_WB_EN_;
 if (!(adapter->csr.flags & LAN743X_CSR_FLAG_IS_A0)) {
  data |= (RX_CFG_A_RX_WB_ON_INT_TMR_ |
   RX_CFG_A_RX_WB_THRES_SET_(0x7) |
   RX_CFG_A_RX_PF_THRES_SET_(16) |
   RX_CFG_A_RX_PF_PRI_THRES_SET_(4));
 }


 lan743x_csr_write(adapter,
     RX_CFG_A(rx->channel_number), data);


 data = lan743x_csr_read(adapter, RX_CFG_B(rx->channel_number));
 data &= ~RX_CFG_B_RX_PAD_MASK_;
 if (!RX_HEAD_PADDING)
  data |= RX_CFG_B_RX_PAD_0_;
 else
  data |= RX_CFG_B_RX_PAD_2_;
 data &= ~RX_CFG_B_RX_RING_LEN_MASK_;
 data |= ((rx->ring_size) & RX_CFG_B_RX_RING_LEN_MASK_);
 data |= RX_CFG_B_TS_ALL_RX_;
 if (!(adapter->csr.flags & LAN743X_CSR_FLAG_IS_A0))
  data |= RX_CFG_B_RDMABL_512_;

 lan743x_csr_write(adapter, RX_CFG_B(rx->channel_number), data);
 rx->vector_flags = lan743x_intr_get_vector_flags(adapter,
        INT_BIT_DMA_RX_
        (rx->channel_number));


 data = 0;
 if (rx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR)
  data |= RX_CFG_C_RX_TOP_INT_EN_AUTO_CLR_;
 if (rx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR)
  data |= RX_CFG_C_RX_DMA_INT_STS_AUTO_CLR_;
 if (rx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C)
  data |= RX_CFG_C_RX_INT_STS_R2C_MODE_MASK_;
 if (rx->vector_flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C)
  data |= RX_CFG_C_RX_INT_EN_R2C_;
 lan743x_csr_write(adapter, RX_CFG_C(rx->channel_number), data);

 rx->last_tail = ((u32)(rx->ring_size - 1));
 lan743x_csr_write(adapter, RX_TAIL(rx->channel_number),
     rx->last_tail);
 rx->last_head = lan743x_csr_read(adapter, RX_HEAD(rx->channel_number));
 if (rx->last_head) {
  ret = -EIO;
  goto napi_delete;
 }

 napi_enable(&rx->napi);

 lan743x_csr_write(adapter, INT_EN_SET,
     INT_BIT_DMA_RX_(rx->channel_number));
 lan743x_csr_write(adapter, DMAC_INT_STS,
     DMAC_INT_BIT_RXFRM_(rx->channel_number));
 lan743x_csr_write(adapter, DMAC_INT_EN_SET,
     DMAC_INT_BIT_RXFRM_(rx->channel_number));
 lan743x_csr_write(adapter, DMAC_CMD,
     DMAC_CMD_START_R_(rx->channel_number));


 lan743x_csr_write(adapter, FCT_RX_CTL,
     FCT_RX_CTL_RESET_(rx->channel_number));
 lan743x_csr_wait_for_bit(adapter, FCT_RX_CTL,
     FCT_RX_CTL_RESET_(rx->channel_number),
     0, 1000, 20000, 100);
 lan743x_csr_write(adapter, FCT_FLOW(rx->channel_number),
     FCT_FLOW_CTL_REQ_EN_ |
     FCT_FLOW_CTL_ON_THRESHOLD_SET_(0x2A) |
     FCT_FLOW_CTL_OFF_THRESHOLD_SET_(0xA));


 lan743x_csr_write(adapter, FCT_RX_CTL,
     FCT_RX_CTL_EN_(rx->channel_number));
 return 0;

napi_delete:
 netif_napi_del(&rx->napi);
 lan743x_rx_ring_cleanup(rx);

return_error:
 return ret;
}
