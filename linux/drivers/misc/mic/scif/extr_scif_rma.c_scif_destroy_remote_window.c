
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_window {int nr_pages; scalar_t__ magic; struct scif_window* num_pages; struct scif_window* dma_addr; } ;


 int scif_free (struct scif_window*,int) ;

void
scif_destroy_remote_window(struct scif_window *window)
{
 scif_free(window->dma_addr, window->nr_pages *
    sizeof(*window->dma_addr));
 scif_free(window->num_pages, window->nr_pages *
    sizeof(*window->num_pages));
 window->magic = 0;
 scif_free(window, sizeof(*window));
}
