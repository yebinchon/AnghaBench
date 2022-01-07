
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int des0; } ;
struct dma_extended_desc {TYPE_1__ basic; } ;
struct dma_desc {int des3; int des2; } ;


 int RDES0_IPC_CSUM_ERROR ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int enh_desc_get_rx_timestamp_status(void *desc, void *next_desc,
         u32 ats)
{
 if (ats) {
  struct dma_extended_desc *p = (struct dma_extended_desc *)desc;
  return (le32_to_cpu(p->basic.des0) & RDES0_IPC_CSUM_ERROR) >> 7;
 } else {
  struct dma_desc *p = (struct dma_desc *)desc;
  if ((le32_to_cpu(p->des2) == 0xffffffff) &&
      (le32_to_cpu(p->des3) == 0xffffffff))

   return 0;
  else
   return 1;
 }
}
