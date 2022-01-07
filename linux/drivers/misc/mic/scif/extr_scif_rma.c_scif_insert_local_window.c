
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_window {int dummy; } ;
struct TYPE_2__ {int rma_lock; int reg_list; } ;
struct scif_endpt {TYPE_1__ rma_info; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scif_insert_window (struct scif_window*,int *) ;

__attribute__((used)) static inline void
scif_insert_local_window(struct scif_window *window, struct scif_endpt *ep)
{
 mutex_lock(&ep->rma_info.rma_lock);
 scif_insert_window(window, &ep->rma_info.reg_list);
 mutex_unlock(&ep->rma_info.rma_lock);
}
