
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des2; int des3; } ;


 int XGMAC_RDES2_HL ;
 int XGMAC_RDES3_L34T ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int dwxgmac2_get_rx_header_len(struct dma_desc *p, unsigned int *len)
{
 if (le32_to_cpu(p->des3) & XGMAC_RDES3_L34T)
  *len = le32_to_cpu(p->des2) & XGMAC_RDES2_HL;
 return 0;
}
