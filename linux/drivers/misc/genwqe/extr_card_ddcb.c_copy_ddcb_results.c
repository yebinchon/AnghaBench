
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ddcb_prev; int ddcb_finished; } ;
struct TYPE_3__ {void* retc; int progress; void* attn; void* cmplt_ts; void* deque_ts; void* vcrc; int * asv; } ;
struct ddcb_requ {size_t num; TYPE_2__ debug_data; TYPE_1__ cmd; struct ddcb_queue* queue; } ;
struct ddcb_queue {int ddcb_max; struct ddcb* ddcb_vaddr; } ;
struct ddcb {int retc_16; int progress_32; int attn_16; int cmplt_ts_64; int deque_ts_64; int vcrc_16; struct ddcb* asv; } ;


 int DDCB_ASV_LENGTH ;
 void* be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 void* be64_to_cpu (int ) ;
 scalar_t__ ddcb_requ_collect_debug_data (struct ddcb_requ*) ;
 int memcpy (int *,struct ddcb*,int) ;

__attribute__((used)) static void copy_ddcb_results(struct ddcb_requ *req, int ddcb_no)
{
 struct ddcb_queue *queue = req->queue;
 struct ddcb *pddcb = &queue->ddcb_vaddr[req->num];

 memcpy(&req->cmd.asv[0], &pddcb->asv[0], DDCB_ASV_LENGTH);


 req->cmd.vcrc = be16_to_cpu(pddcb->vcrc_16);
 req->cmd.deque_ts = be64_to_cpu(pddcb->deque_ts_64);
 req->cmd.cmplt_ts = be64_to_cpu(pddcb->cmplt_ts_64);

 req->cmd.attn = be16_to_cpu(pddcb->attn_16);
 req->cmd.progress = be32_to_cpu(pddcb->progress_32);
 req->cmd.retc = be16_to_cpu(pddcb->retc_16);

 if (ddcb_requ_collect_debug_data(req)) {
  int prev_no = (ddcb_no == 0) ?
   queue->ddcb_max - 1 : ddcb_no - 1;
  struct ddcb *prev_pddcb = &queue->ddcb_vaddr[prev_no];

  memcpy(&req->debug_data.ddcb_finished, pddcb,
         sizeof(req->debug_data.ddcb_finished));
  memcpy(&req->debug_data.ddcb_prev, prev_pddcb,
         sizeof(req->debug_data.ddcb_prev));
 }
}
