
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * lookup; int offset; } ;
struct TYPE_3__ {int * lookup; int offset; } ;
struct scif_window {int nr_pages; int nr_lookup; int * num_pages; TYPE_2__ num_pages_lookup; int * dma_addr; TYPE_1__ dma_addr_lookup; int mapped_offset; } ;
struct scif_dev {int dummy; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ SCIF_NR_ADDR_IN_PAGE ;
 int __GFP_ZERO ;
 int is_vmalloc_addr (int *) ;
 int might_sleep () ;
 void* scif_alloc_coherent (int *,struct scif_dev*,int,int) ;
 int scif_map_page (int *,int ,struct scif_dev*) ;
 int scif_map_single (int *,struct scif_window*,struct scif_dev*,int) ;
 int virt_to_page (int *) ;
 int vmalloc_to_page (int *) ;

__attribute__((used)) static int scif_create_remote_lookup(struct scif_dev *remote_dev,
         struct scif_window *window)
{
 int i, j, err = 0;
 int nr_pages = window->nr_pages;
 bool vmalloc_dma_phys, vmalloc_num_pages;

 might_sleep();

 err = scif_map_single(&window->mapped_offset,
         window, remote_dev, sizeof(*window));
 if (err)
  goto error_window;


 window->nr_lookup = ALIGN(nr_pages * PAGE_SIZE,
     ((2) * 1024 * 1024)) >> 21;

 window->dma_addr_lookup.lookup =
  scif_alloc_coherent(&window->dma_addr_lookup.offset,
        remote_dev, window->nr_lookup *
        sizeof(*window->dma_addr_lookup.lookup),
        GFP_KERNEL | __GFP_ZERO);
 if (!window->dma_addr_lookup.lookup) {
  err = -ENOMEM;
  goto error_window;
 }

 window->num_pages_lookup.lookup =
  scif_alloc_coherent(&window->num_pages_lookup.offset,
        remote_dev, window->nr_lookup *
        sizeof(*window->num_pages_lookup.lookup),
        GFP_KERNEL | __GFP_ZERO);
 if (!window->num_pages_lookup.lookup) {
  err = -ENOMEM;
  goto error_window;
 }

 vmalloc_dma_phys = is_vmalloc_addr(&window->dma_addr[0]);
 vmalloc_num_pages = is_vmalloc_addr(&window->num_pages[0]);


 for (i = 0, j = 0; i < nr_pages; i += SCIF_NR_ADDR_IN_PAGE, j++) {
  err = scif_map_page(&window->dma_addr_lookup.lookup[j],
        vmalloc_dma_phys ?
        vmalloc_to_page(&window->dma_addr[i]) :
        virt_to_page(&window->dma_addr[i]),
        remote_dev);
  if (err)
   goto error_window;
  err = scif_map_page(&window->num_pages_lookup.lookup[j],
        vmalloc_num_pages ?
        vmalloc_to_page(&window->num_pages[i]) :
        virt_to_page(&window->num_pages[i]),
        remote_dev);
  if (err)
   goto error_window;
 }
 return 0;
error_window:
 return err;
}
