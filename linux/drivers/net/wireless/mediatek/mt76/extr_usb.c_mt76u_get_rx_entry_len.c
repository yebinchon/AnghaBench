
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 int EINVAL ;
 scalar_t__ MT_DMA_HDR_LEN ;
 scalar_t__ MT_FCE_INFO_LEN ;
 scalar_t__ MT_RX_RXWI_LEN ;
 scalar_t__ get_unaligned_le16 (int *) ;

__attribute__((used)) static int mt76u_get_rx_entry_len(u8 *data, u32 data_len)
{
 u16 dma_len, min_len;

 dma_len = get_unaligned_le16(data);
 min_len = MT_DMA_HDR_LEN + MT_RX_RXWI_LEN +
    MT_FCE_INFO_LEN;

 if (data_len < min_len || !dma_len ||
     dma_len + MT_DMA_HDR_LEN > data_len ||
     (dma_len & 0x3))
  return -EINVAL;
 return dma_len;
}
