
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des2; int des3; } ;


 scalar_t__ BUF_SIZE_8KiB ;
 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void init_desc3(struct dma_desc *p)
{
 p->des3 = cpu_to_le32(le32_to_cpu(p->des2) + BUF_SIZE_8KiB);
}
