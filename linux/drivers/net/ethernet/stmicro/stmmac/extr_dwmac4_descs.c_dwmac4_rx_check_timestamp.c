
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct dma_desc {int des3; int des1; int des0; } ;


 int EINVAL ;
 unsigned int RDES3_CONTEXT_DESCRIPTOR ;
 unsigned int RDES3_CONTEXT_DESCRIPTOR_SHIFT ;
 unsigned int RDES3_OWN ;
 unsigned int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int dwmac4_rx_check_timestamp(void *desc)
{
 struct dma_desc *p = (struct dma_desc *)desc;
 unsigned int rdes0 = le32_to_cpu(p->des0);
 unsigned int rdes1 = le32_to_cpu(p->des1);
 unsigned int rdes3 = le32_to_cpu(p->des3);
 u32 own, ctxt;
 int ret = 1;

 own = rdes3 & RDES3_OWN;
 ctxt = ((rdes3 & RDES3_CONTEXT_DESCRIPTOR)
  >> RDES3_CONTEXT_DESCRIPTOR_SHIFT);

 if (likely(!own && ctxt)) {
  if ((rdes0 == 0xffffffff) && (rdes1 == 0xffffffff))

   ret = -EINVAL;
  else

   ret = 0;
 }


 return ret;
}
