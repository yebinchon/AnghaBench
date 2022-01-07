
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_window {int list; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int misc_work; int rmalock; } ;


 int list_add_tail (int *,struct list_head*) ;
 int schedule_work (int *) ;
 TYPE_1__ scif_info ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
scif_queue_for_cleanup(struct scif_window *window, struct list_head *list)
{
 spin_lock(&scif_info.rmalock);
 list_add_tail(&window->list, list);
 spin_unlock(&scif_info.rmalock);
 schedule_work(&scif_info.misc_work);
}
