
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_desc {int des3; int des2; int des1; int des0; } ;


 int le32_to_cpu (int ) ;
 int pr_info (char*,...) ;
 scalar_t__ virt_to_phys (struct dma_desc*) ;

__attribute__((used)) static void dwmac4_display_ring(void *head, unsigned int size, bool rx)
{
 struct dma_desc *p = (struct dma_desc *)head;
 int i;

 pr_info("%s descriptor ring:\n", rx ? "RX" : "TX");

 for (i = 0; i < size; i++) {
  pr_info("%03d [0x%x]: 0x%x 0x%x 0x%x 0x%x\n",
   i, (unsigned int)virt_to_phys(p),
   le32_to_cpu(p->des0), le32_to_cpu(p->des1),
   le32_to_cpu(p->des2), le32_to_cpu(p->des3));
  p++;
 }
}
