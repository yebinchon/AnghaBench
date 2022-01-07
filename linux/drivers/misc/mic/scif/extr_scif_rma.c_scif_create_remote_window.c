
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_window {int nr_pages; int list; int unreg_state; int type; void* num_pages; void* dma_addr; int magic; } ;
struct scif_dev {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int OP_IDLE ;
 int SCIFEP_MAGIC ;
 int SCIF_WINDOW_PEER ;
 int might_sleep () ;
 scalar_t__ scif_create_remote_lookup (struct scif_dev*,struct scif_window*) ;
 int scif_destroy_remote_window (struct scif_window*) ;
 void* scif_zalloc (int) ;

__attribute__((used)) static struct scif_window *
scif_create_remote_window(struct scif_dev *scifdev, int nr_pages)
{
 struct scif_window *window;

 might_sleep();
 window = scif_zalloc(sizeof(*window));
 if (!window)
  goto error_ret;

 window->magic = SCIFEP_MAGIC;
 window->nr_pages = nr_pages;

 window->dma_addr = scif_zalloc(nr_pages * sizeof(*window->dma_addr));
 if (!window->dma_addr)
  goto error_window;

 window->num_pages = scif_zalloc(nr_pages *
     sizeof(*window->num_pages));
 if (!window->num_pages)
  goto error_window;

 if (scif_create_remote_lookup(scifdev, window))
  goto error_window;

 window->type = SCIF_WINDOW_PEER;
 window->unreg_state = OP_IDLE;
 INIT_LIST_HEAD(&window->list);
 return window;
error_window:
 scif_destroy_remote_window(window);
error_ret:
 return ((void*)0);
}
