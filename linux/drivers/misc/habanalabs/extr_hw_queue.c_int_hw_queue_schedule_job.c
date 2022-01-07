
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct hl_hw_queue {int pi; int int_queue_len; int hw_queue_id; scalar_t__ kernel_address; } ;
struct hl_device {TYPE_3__* asic_funcs; struct hl_hw_queue* kernel_queues; } ;
struct hl_cs_job {size_t hw_queue_id; scalar_t__ user_cb; int job_cb_size; TYPE_2__* cs; } ;
struct hl_bd {int ptr; int len; scalar_t__ ctl; } ;
typedef int bd ;
typedef int __le64 ;
struct TYPE_6__ {int (* ring_doorbell ) (struct hl_device*,int ,int) ;int (* pqe_write ) (struct hl_device*,int *,struct hl_bd*) ;} ;
struct TYPE_5__ {TYPE_1__* ctx; } ;
struct TYPE_4__ {struct hl_device* hdev; } ;


 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int stub1 (struct hl_device*,int *,struct hl_bd*) ;
 int stub2 (struct hl_device*,int ,int) ;

__attribute__((used)) static void int_hw_queue_schedule_job(struct hl_cs_job *job)
{
 struct hl_device *hdev = job->cs->ctx->hdev;
 struct hl_hw_queue *q = &hdev->kernel_queues[job->hw_queue_id];
 struct hl_bd bd;
 __le64 *pi;

 bd.ctl = 0;
 bd.len = cpu_to_le32(job->job_cb_size);
 bd.ptr = cpu_to_le64((u64) (uintptr_t) job->user_cb);

 pi = (__le64 *) (uintptr_t) (q->kernel_address +
  ((q->pi & (q->int_queue_len - 1)) * sizeof(bd)));

 q->pi++;
 q->pi &= ((q->int_queue_len << 1) - 1);

 hdev->asic_funcs->pqe_write(hdev, pi, &bd);

 hdev->asic_funcs->ring_doorbell(hdev, q->hw_queue_id, q->pi);
}
