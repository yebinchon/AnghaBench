
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nicvf_cq_poll {int dummy; } ;
struct nicvf {struct nicvf_cq_poll** napi; TYPE_1__* qs; } ;
struct TYPE_2__ {int cq_cnt; } ;


 int kfree (struct nicvf_cq_poll*) ;

__attribute__((used)) static inline void nicvf_free_cq_poll(struct nicvf *nic)
{
 struct nicvf_cq_poll *cq_poll;
 int qidx;

 for (qidx = 0; qidx < nic->qs->cq_cnt; qidx++) {
  cq_poll = nic->napi[qidx];
  if (!cq_poll)
   continue;
  nic->napi[qidx] = ((void*)0);
  kfree(cq_poll);
 }
}
