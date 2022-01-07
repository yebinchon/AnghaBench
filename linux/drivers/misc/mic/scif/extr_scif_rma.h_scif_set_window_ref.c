
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_window {int ref_count; } ;



__attribute__((used)) static inline void scif_set_window_ref(struct scif_window *window, int nr_pages)
{
 window->ref_count = nr_pages;
}
