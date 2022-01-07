
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef scalar_t__ u32 ;
struct dma_extended_desc {int des7; int des6; } ;
struct dma_desc {int des3; int des2; } ;


 unsigned long long le32_to_cpu (int ) ;

__attribute__((used)) static void enh_desc_get_timestamp(void *desc, u32 ats, u64 *ts)
{
 u64 ns;

 if (ats) {
  struct dma_extended_desc *p = (struct dma_extended_desc *)desc;
  ns = le32_to_cpu(p->des6);

  ns += le32_to_cpu(p->des7) * 1000000000ULL;
 } else {
  struct dma_desc *p = (struct dma_desc *)desc;
  ns = le32_to_cpu(p->des2);
  ns += le32_to_cpu(p->des3) * 1000000000ULL;
 }

 *ts = ns;
}
