
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fence_refcount; int markwq; } ;
struct scif_endpt {TYPE_1__ rma_info; } ;


 int atomic_dec (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void scif_fence_mark_cb(void *arg)
{
 struct scif_endpt *ep = (struct scif_endpt *)arg;

 wake_up_interruptible(&ep->rma_info.markwq);
 atomic_dec(&ep->rma_info.fence_refcount);
}
