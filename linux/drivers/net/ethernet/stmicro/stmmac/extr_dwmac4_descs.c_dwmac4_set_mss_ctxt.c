
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {void* des3; void* des2; scalar_t__ des1; scalar_t__ des0; } ;


 unsigned int TDES3_CONTEXT_TYPE ;
 unsigned int TDES3_CTXT_TCMSSV ;
 void* cpu_to_le32 (unsigned int) ;

__attribute__((used)) static void dwmac4_set_mss_ctxt(struct dma_desc *p, unsigned int mss)
{
 p->des0 = 0;
 p->des1 = 0;
 p->des2 = cpu_to_le32(mss);
 p->des3 = cpu_to_le32(TDES3_CONTEXT_TYPE | TDES3_CTXT_TCMSSV);
}
