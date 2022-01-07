
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct rvu_block {int addr; struct admin_queue* aq; } ;
struct rvu {int dummy; } ;
struct npa_aq_res_s {scalar_t__ compcode; } ;
struct npa_aq_inst_s {int dummy; } ;
struct admin_queue {TYPE_2__* inst; TYPE_1__* res; } ;
struct TYPE_4__ {int entry_sz; scalar_t__ base; } ;
struct TYPE_3__ {scalar_t__ base; } ;


 int AQ_PTR_MASK ;
 int EBUSY ;
 int NPA_AF_AQ_DOOR ;
 int NPA_AF_AQ_STATUS ;
 scalar_t__ NPA_AQ_COMP_GOOD ;
 scalar_t__ NPA_AQ_COMP_NOTDONE ;
 int cpu_relax () ;
 int memcpy (void*,void*,int) ;
 int memset (struct npa_aq_res_s*,int ,int) ;
 int rvu_read64 (struct rvu*,int ,int ) ;
 int rvu_write64 (struct rvu*,int ,int ,int) ;
 int udelay (int) ;
 int wmb () ;

__attribute__((used)) static int npa_aq_enqueue_wait(struct rvu *rvu, struct rvu_block *block,
          struct npa_aq_inst_s *inst)
{
 struct admin_queue *aq = block->aq;
 struct npa_aq_res_s *result;
 int timeout = 1000;
 u64 reg, head;

 result = (struct npa_aq_res_s *)aq->res->base;


 reg = rvu_read64(rvu, block->addr, NPA_AF_AQ_STATUS);
 head = (reg >> 4) & AQ_PTR_MASK;

 memcpy((void *)(aq->inst->base + (head * aq->inst->entry_sz)),
        (void *)inst, aq->inst->entry_sz);
 memset(result, 0, sizeof(*result));

 wmb();


 rvu_write64(rvu, block->addr, NPA_AF_AQ_DOOR, 1);
 while (result->compcode == NPA_AQ_COMP_NOTDONE) {
  cpu_relax();
  udelay(1);
  timeout--;
  if (!timeout)
   return -EBUSY;
 }

 if (result->compcode != NPA_AQ_COMP_GOOD)

  return -EBUSY;

 return 0;
}
