
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des3; } ;


 int TDES3_CONTEXT_TYPE ;
 int TDES3_TIMESTAMP_STATUS ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int dwmac4_wrback_get_tx_timestamp_status(struct dma_desc *p)
{

 if (le32_to_cpu(p->des3) & TDES3_CONTEXT_TYPE)
  return 0;


 if (le32_to_cpu(p->des3) & TDES3_TIMESTAMP_STATUS)
  return 1;

 return 0;
}
