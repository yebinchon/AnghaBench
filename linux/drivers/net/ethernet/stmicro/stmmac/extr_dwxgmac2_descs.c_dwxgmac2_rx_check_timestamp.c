
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des0; int des1; int des3; } ;


 int EINVAL ;
 unsigned int XGMAC_RDES3_CTXT ;
 unsigned int XGMAC_RDES3_OWN ;
 unsigned int XGMAC_RDES3_TSA ;
 unsigned int XGMAC_RDES3_TSD ;
 int dma_rmb () ;
 unsigned int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int dwxgmac2_rx_check_timestamp(void *desc)
{
 struct dma_desc *p = (struct dma_desc *)desc;
 unsigned int rdes3 = le32_to_cpu(p->des3);
 bool desc_valid, ts_valid;

 dma_rmb();

 desc_valid = !(rdes3 & XGMAC_RDES3_OWN) && (rdes3 & XGMAC_RDES3_CTXT);
 ts_valid = !(rdes3 & XGMAC_RDES3_TSD) && (rdes3 & XGMAC_RDES3_TSA);

 if (likely(desc_valid && ts_valid)) {
  if ((p->des0 == 0xffffffff) && (p->des1 == 0xffffffff))
   return -EINVAL;
  return 0;
 }

 return -EINVAL;
}
