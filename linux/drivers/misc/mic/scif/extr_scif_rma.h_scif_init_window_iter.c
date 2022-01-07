
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_window_iter {scalar_t__ index; int offset; } ;
struct scif_window {int offset; } ;



__attribute__((used)) static inline void
scif_init_window_iter(struct scif_window *window, struct scif_window_iter *iter)
{
 iter->offset = window->offset;
 iter->index = 0;
}
