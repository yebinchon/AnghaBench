
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scif_window_iter {int dummy; } ;
struct scif_window {scalar_t__ type; } ;
struct scif_dev {TYPE_2__* sdev; } ;
typedef int off_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {TYPE_1__* aper; int card_rel_da; } ;
struct TYPE_3__ {scalar_t__ pa; } ;


 scalar_t__ SCIF_WINDOW_PEER ;
 void* scif_ioremap (scalar_t__,size_t,struct scif_dev*) ;
 scalar_t__ scif_off_to_dma_addr (struct scif_window*,int ,int *,struct scif_window_iter*) ;
 int scifdev_self (struct scif_dev*) ;

__attribute__((used)) static inline
void *ioremap_remote(off_t off, struct scif_window *window,
       size_t len, struct scif_dev *dev,
       struct scif_window_iter *iter)
{
 dma_addr_t phys = scif_off_to_dma_addr(window, off, ((void*)0), iter);






 if (!scifdev_self(dev) && window->type == SCIF_WINDOW_PEER &&
     dev->sdev->aper && !dev->sdev->card_rel_da)
  phys = phys - dev->sdev->aper->pa;
 return scif_ioremap(phys, len, dev);
}
