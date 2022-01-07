
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dma_desc {int des3; int des2; } ;


 int pr_info (char*,...) ;
 scalar_t__ virt_to_phys (struct dma_desc*) ;

__attribute__((used)) static void ndesc_display_ring(void *head, unsigned int size, bool rx)
{
 struct dma_desc *p = (struct dma_desc *)head;
 int i;

 pr_info("%s descriptor ring:\n", rx ? "RX" : "TX");

 for (i = 0; i < size; i++) {
  u64 x;

  x = *(u64 *)p;
  pr_info("%03d [0x%x]: 0x%x 0x%x 0x%x 0x%x",
   i, (unsigned int)virt_to_phys(p),
   (unsigned int)x, (unsigned int)(x >> 32),
   p->des2, p->des3);
  p++;
 }
 pr_info("\n");
}
