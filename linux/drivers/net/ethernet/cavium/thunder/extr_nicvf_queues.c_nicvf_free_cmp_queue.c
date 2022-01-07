
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nicvf {int dummy; } ;
struct TYPE_2__ {int base; } ;
struct cmp_queue {TYPE_1__ dmem; } ;


 int nicvf_free_q_desc_mem (struct nicvf*,TYPE_1__*) ;

__attribute__((used)) static void nicvf_free_cmp_queue(struct nicvf *nic, struct cmp_queue *cq)
{
 if (!cq)
  return;
 if (!cq->dmem.base)
  return;

 nicvf_free_q_desc_mem(nic, &cq->dmem);
}
