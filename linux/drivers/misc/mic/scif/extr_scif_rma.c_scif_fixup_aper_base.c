
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_window {scalar_t__ type; int nr_contig_chunks; int * dma_addr; scalar_t__* num_pages; } ;
struct scif_hw_dev {TYPE_1__* aper; int card_rel_da; } ;
struct scif_dev {struct scif_hw_dev* sdev; } ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_2__ {scalar_t__ pa; } ;


 scalar_t__ SCIF_WINDOW_PEER ;
 int scifdev_self (struct scif_dev*) ;

__attribute__((used)) static void
scif_fixup_aper_base(struct scif_dev *dev, struct scif_window *window)
{
 int j;
 struct scif_hw_dev *sdev = dev->sdev;
 phys_addr_t apt_base = 0;





 if (!scifdev_self(dev) && window->type == SCIF_WINDOW_PEER &&
     sdev->aper && !sdev->card_rel_da)
  apt_base = sdev->aper->pa;
 else
  return;

 for (j = 0; j < window->nr_contig_chunks; j++) {
  if (window->num_pages[j])
   window->dma_addr[j] += apt_base;
  else
   break;
 }
}
