
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int u32 ;
struct dma_desc {int des3; int des2; } ;


 unsigned long long le32_to_cpu (int ) ;

__attribute__((used)) static void ndesc_get_timestamp(void *desc, u32 ats, u64 *ts)
{
 struct dma_desc *p = (struct dma_desc *)desc;
 u64 ns;

 ns = le32_to_cpu(p->des2);

 ns += le32_to_cpu(p->des3) * 1000000000ULL;

 *ts = ns;
}
