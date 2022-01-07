
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_rx {int channel_number; int napi; struct lan743x_adapter* adapter; } ;
struct lan743x_adapter {int dummy; } ;


 int DMAC_INT_BIT_RXFRM_ (int ) ;
 int DMAC_INT_EN_SET ;
 int DMAC_INT_STS ;
 int INT_BIT_DMA_RX_ (int ) ;
 int INT_EN_CLR ;
 int INT_EN_SET ;
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK ;
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR ;
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int napi_schedule (int *) ;

__attribute__((used)) static void lan743x_rx_isr(void *context, u32 int_sts, u32 flags)
{
 struct lan743x_rx *rx = context;
 struct lan743x_adapter *adapter = rx->adapter;
 bool enable_flag = 1;

 if (flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR) {
  lan743x_csr_write(adapter, INT_EN_CLR,
      INT_BIT_DMA_RX_(rx->channel_number));
 }

 if (int_sts & INT_BIT_DMA_RX_(rx->channel_number)) {
  u32 rx_frame_bit = DMAC_INT_BIT_RXFRM_(rx->channel_number);
  u32 dmac_int_sts;
  u32 dmac_int_en;

  if (flags & LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ)
   dmac_int_sts = lan743x_csr_read(adapter, DMAC_INT_STS);
  else
   dmac_int_sts = rx_frame_bit;
  if (flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK)
   dmac_int_en = lan743x_csr_read(adapter,
             DMAC_INT_EN_SET);
  else
   dmac_int_en = rx_frame_bit;

  dmac_int_en &= rx_frame_bit;
  dmac_int_sts &= dmac_int_en;
  if (dmac_int_sts & rx_frame_bit) {
   napi_schedule(&rx->napi);
   enable_flag = 0;
  }
 }

 if (enable_flag) {

  lan743x_csr_write(adapter, INT_EN_SET,
      INT_BIT_DMA_RX_(rx->channel_number));
 }
}
