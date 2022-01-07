
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des0; } ;


 unsigned int RDES0_FRAME_LEN_MASK ;
 unsigned int RDES0_FRAME_LEN_SHIFT ;
 int STMMAC_RX_COE_TYPE1 ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static int enh_desc_get_rx_frame_len(struct dma_desc *p, int rx_coe_type)
{
 unsigned int csum = 0;






 if (rx_coe_type == STMMAC_RX_COE_TYPE1)
  csum = 2;

 return (((le32_to_cpu(p->des0) & RDES0_FRAME_LEN_MASK)
    >> RDES0_FRAME_LEN_SHIFT) - csum);
}
