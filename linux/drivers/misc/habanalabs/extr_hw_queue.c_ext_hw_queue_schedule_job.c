
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct hl_hw_queue {int pi; size_t hw_queue_id; struct hl_cs_job** shadow_queue; } ;
struct hl_device {TYPE_3__* asic_funcs; struct hl_cq* completion_queue; struct hl_hw_queue* kernel_queues; } ;
struct hl_cs_job {size_t hw_queue_id; int job_cb_size; struct hl_cb* patched_cb; TYPE_2__* cs; } ;
struct hl_cq_entry {int data; } ;
struct hl_cq {int pi; scalar_t__ bus_address; } ;
struct hl_cb {int kernel_address; scalar_t__ bus_address; } ;
struct TYPE_6__ {int (* add_end_of_cb_packets ) (struct hl_device*,int ,int,scalar_t__,int ,size_t) ;} ;
struct TYPE_5__ {TYPE_1__* ctx; } ;
struct TYPE_4__ {struct hl_device* hdev; } ;


 int BD_CTL_SHADOW_INDEX_MASK ;
 int BD_CTL_SHADOW_INDEX_SHIFT ;
 int CQ_ENTRY_READY_SHIFT ;
 int CQ_ENTRY_SHADOW_INDEX_MASK ;
 int CQ_ENTRY_SHADOW_INDEX_SHIFT ;
 int CQ_ENTRY_SHADOW_INDEX_VALID_SHIFT ;
 int cpu_to_le32 (int) ;
 int ext_queue_submit_bd (struct hl_device*,struct hl_hw_queue*,int,int,scalar_t__) ;
 int hl_cq_inc_ptr (int) ;
 size_t hl_pi_2_offset (int) ;
 int le32_to_cpu (int ) ;
 int stub1 (struct hl_device*,int ,int,scalar_t__,int ,size_t) ;

__attribute__((used)) static void ext_hw_queue_schedule_job(struct hl_cs_job *job)
{
 struct hl_device *hdev = job->cs->ctx->hdev;
 struct hl_hw_queue *q = &hdev->kernel_queues[job->hw_queue_id];
 struct hl_cq_entry cq_pkt;
 struct hl_cq *cq;
 u64 cq_addr;
 struct hl_cb *cb;
 u32 ctl;
 u32 len;
 u64 ptr;





 ctl = ((q->pi << BD_CTL_SHADOW_INDEX_SHIFT) & BD_CTL_SHADOW_INDEX_MASK);

 cb = job->patched_cb;
 len = job->job_cb_size;
 ptr = cb->bus_address;

 cq_pkt.data = cpu_to_le32(
    ((q->pi << CQ_ENTRY_SHADOW_INDEX_SHIFT)
     & CQ_ENTRY_SHADOW_INDEX_MASK) |
    (1 << CQ_ENTRY_SHADOW_INDEX_VALID_SHIFT) |
    (1 << CQ_ENTRY_READY_SHIFT));
 cq = &hdev->completion_queue[q->hw_queue_id];
 cq_addr = cq->bus_address + cq->pi * sizeof(struct hl_cq_entry);

 hdev->asic_funcs->add_end_of_cb_packets(hdev, cb->kernel_address, len,
      cq_addr,
      le32_to_cpu(cq_pkt.data),
      q->hw_queue_id);

 q->shadow_queue[hl_pi_2_offset(q->pi)] = job;

 cq->pi = hl_cq_inc_ptr(cq->pi);

 ext_queue_submit_bd(hdev, q, ctl, len, ptr);
}
