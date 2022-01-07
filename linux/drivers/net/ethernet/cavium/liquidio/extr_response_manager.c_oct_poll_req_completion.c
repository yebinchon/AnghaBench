
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_3__ {int work; } ;
struct cavium_wq {TYPE_1__ wk; int wq; } ;
struct octeon_device {TYPE_2__* response_list; struct cavium_wq dma_comp_wq; } ;
struct cavium_wk {scalar_t__ ctxptr; } ;
struct TYPE_4__ {int pending_req_count; } ;


 size_t OCTEON_ORDERED_SC_LIST ;
 scalar_t__ atomic_read (int *) ;
 int lio_process_ordered_list (struct octeon_device*,int ) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void oct_poll_req_completion(struct work_struct *work)
{
 struct cavium_wk *wk = (struct cavium_wk *)work;
 struct octeon_device *oct = (struct octeon_device *)wk->ctxptr;
 struct cavium_wq *cwq = &oct->dma_comp_wq;

 lio_process_ordered_list(oct, 0);

 if (atomic_read(&oct->response_list
   [OCTEON_ORDERED_SC_LIST].pending_req_count))
  queue_delayed_work(cwq->wq, &cwq->wk.work, msecs_to_jiffies(1));
}
