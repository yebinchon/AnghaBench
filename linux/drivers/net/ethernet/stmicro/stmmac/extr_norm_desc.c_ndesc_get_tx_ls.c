
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des1; } ;


 int TDES1_LAST_SEGMENT ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ndesc_get_tx_ls(struct dma_desc *p)
{
 return (le32_to_cpu(p->des1) & TDES1_LAST_SEGMENT) >> 30;
}
