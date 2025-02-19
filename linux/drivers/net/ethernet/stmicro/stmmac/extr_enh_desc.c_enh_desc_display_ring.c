
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int des3; int des2; } ;
struct dma_extended_desc {TYPE_1__ basic; } ;


 int pr_info (char*,...) ;
 scalar_t__ virt_to_phys (struct dma_extended_desc*) ;

__attribute__((used)) static void enh_desc_display_ring(void *head, unsigned int size, bool rx)
{
 struct dma_extended_desc *ep = (struct dma_extended_desc *)head;
 int i;

 pr_info("Extended %s descriptor ring:\n", rx ? "RX" : "TX");

 for (i = 0; i < size; i++) {
  u64 x;

  x = *(u64 *)ep;
  pr_info("%03d [0x%x]: 0x%x 0x%x 0x%x 0x%x\n",
   i, (unsigned int)virt_to_phys(ep),
   (unsigned int)x, (unsigned int)(x >> 32),
   ep->basic.des2, ep->basic.des3);
  ep++;
 }
 pr_info("\n");
}
