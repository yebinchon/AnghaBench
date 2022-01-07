
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xlgmac_pdata {unsigned int rx_frames; unsigned int rx_usecs; } ;
struct xlgmac_dma_desc {void* desc3; void* desc2; void* desc1; void* desc0; } ;
struct TYPE_5__ {scalar_t__ dma_off; scalar_t__ dma_base; } ;
struct TYPE_4__ {scalar_t__ dma_off; scalar_t__ dma_base; } ;
struct TYPE_6__ {TYPE_2__ buf; TYPE_1__ hdr; } ;
struct xlgmac_desc_data {TYPE_3__ rx; struct xlgmac_dma_desc* dma_desc; } ;
typedef scalar_t__ dma_addr_t ;


 int RX_NORMAL_DESC3_INTE_LEN ;
 int RX_NORMAL_DESC3_INTE_POS ;
 int RX_NORMAL_DESC3_OWN_LEN ;
 int RX_NORMAL_DESC3_OWN_POS ;
 void* XLGMAC_SET_REG_BITS_LE (void*,int ,int ,int) ;
 void* cpu_to_le32 (int ) ;
 int dma_wmb () ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void xlgmac_rx_desc_reset(struct xlgmac_pdata *pdata,
     struct xlgmac_desc_data *desc_data,
     unsigned int index)
{
 struct xlgmac_dma_desc *dma_desc = desc_data->dma_desc;
 unsigned int rx_frames = pdata->rx_frames;
 unsigned int rx_usecs = pdata->rx_usecs;
 dma_addr_t hdr_dma, buf_dma;
 unsigned int inte;

 if (!rx_usecs && !rx_frames) {

  inte = 1;
 } else {

  if (rx_frames && !((index + 1) % rx_frames))
   inte = 1;
  else
   inte = 0;
 }
 hdr_dma = desc_data->rx.hdr.dma_base + desc_data->rx.hdr.dma_off;
 buf_dma = desc_data->rx.buf.dma_base + desc_data->rx.buf.dma_off;
 dma_desc->desc0 = cpu_to_le32(lower_32_bits(hdr_dma));
 dma_desc->desc1 = cpu_to_le32(upper_32_bits(hdr_dma));
 dma_desc->desc2 = cpu_to_le32(lower_32_bits(buf_dma));
 dma_desc->desc3 = cpu_to_le32(upper_32_bits(buf_dma));

 dma_desc->desc3 = XLGMAC_SET_REG_BITS_LE(
    dma_desc->desc3,
    RX_NORMAL_DESC3_INTE_POS,
    RX_NORMAL_DESC3_INTE_LEN,
    inte);





 dma_wmb();

 dma_desc->desc3 = XLGMAC_SET_REG_BITS_LE(
    dma_desc->desc3,
    RX_NORMAL_DESC3_OWN_POS,
    RX_NORMAL_DESC3_OWN_LEN,
    1);


 dma_wmb();
}
