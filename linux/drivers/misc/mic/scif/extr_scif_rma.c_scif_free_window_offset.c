
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_window {int offset_freed; } ;
struct TYPE_2__ {int iovad; } ;
struct scif_endpt {TYPE_1__ rma_info; } ;
typedef int s64 ;


 int PAGE_SHIFT ;
 int free_iova (int *,int) ;

void scif_free_window_offset(struct scif_endpt *ep,
        struct scif_window *window, s64 offset)
{
 if ((window && !window->offset_freed) || !window) {
  free_iova(&ep->rma_info.iovad, offset >> PAGE_SHIFT);
  if (window)
   window->offset_freed = 1;
 }
}
