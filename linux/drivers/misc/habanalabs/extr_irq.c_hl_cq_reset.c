
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;
struct hl_cq {scalar_t__ kernel_address; int free_slots_cnt; scalar_t__ pi; scalar_t__ ci; } ;


 int HL_CQ_LENGTH ;
 int HL_CQ_SIZE_IN_BYTES ;
 int atomic_set (int *,int ) ;
 int memset (void*,int ,int ) ;

void hl_cq_reset(struct hl_device *hdev, struct hl_cq *q)
{
 q->ci = 0;
 q->pi = 0;

 atomic_set(&q->free_slots_cnt, HL_CQ_LENGTH);
 memset((void *) (uintptr_t) q->kernel_address, 0, HL_CQ_SIZE_IN_BYTES);
}
