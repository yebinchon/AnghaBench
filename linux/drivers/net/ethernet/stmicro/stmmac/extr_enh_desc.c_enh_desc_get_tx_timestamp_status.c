
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des0; } ;


 int ETDES0_TIME_STAMP_STATUS ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int enh_desc_get_tx_timestamp_status(struct dma_desc *p)
{
 return (le32_to_cpu(p->des0) & ETDES0_TIME_STAMP_STATUS) >> 17;
}
