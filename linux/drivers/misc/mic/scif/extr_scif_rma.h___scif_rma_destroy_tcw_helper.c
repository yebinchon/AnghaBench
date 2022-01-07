
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_window {int list; } ;
struct TYPE_2__ {int rma_tc; } ;


 int list_del_init (int *) ;
 TYPE_1__ scif_info ;
 int scif_queue_for_cleanup (struct scif_window*,int *) ;

__attribute__((used)) static inline void __scif_rma_destroy_tcw_helper(struct scif_window *window)
{
 list_del_init(&window->list);
 scif_queue_for_cleanup(window, &scif_info.rma_tc);
}
