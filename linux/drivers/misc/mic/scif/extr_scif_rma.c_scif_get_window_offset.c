
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iovad; } ;
struct scif_endpt {TYPE_1__ rma_info; } ;
struct iova {int pfn_lo; } ;
typedef int s64 ;


 int EADDRINUSE ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 scalar_t__ SCIF_DMA_63BIT_PFN ;
 int SCIF_IOVA_PFN (int) ;
 int SCIF_MAP_FIXED ;
 struct iova* alloc_iova (int *,int,scalar_t__,int ) ;
 struct iova* reserve_iova (int *,int,int) ;

int scif_get_window_offset(struct scif_endpt *ep, int flags, s64 offset,
      int num_pages, s64 *out_offset)
{
 s64 page_index;
 struct iova *iova_ptr;
 int err = 0;

 if (flags & SCIF_MAP_FIXED) {
  page_index = SCIF_IOVA_PFN(offset);
  iova_ptr = reserve_iova(&ep->rma_info.iovad, page_index,
     page_index + num_pages - 1);
  if (!iova_ptr)
   err = -EADDRINUSE;
 } else {
  iova_ptr = alloc_iova(&ep->rma_info.iovad, num_pages,
          SCIF_DMA_63BIT_PFN - 1, 0);
  if (!iova_ptr)
   err = -ENOMEM;
 }
 if (!err)
  *out_offset = (iova_ptr->pfn_lo) << PAGE_SHIFT;
 return err;
}
