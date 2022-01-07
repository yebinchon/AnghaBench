
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct genwqe_dev {int dummy; } ;
struct ddcb_queue {size_t ddcb_next; int ddcb_max; int ddcb_seq; struct ddcb* ddcb_vaddr; } ;
struct ddcb {int icrc_hsi_shi_32; int seqnum_16; int pre; } ;


 int DDCB_COMPLETED_BE32 ;
 int DDCB_PRESET_PRE ;
 int cpu_to_be16 (int ) ;
 scalar_t__ queue_free_ddcbs (struct ddcb_queue*) ;

__attribute__((used)) static struct ddcb *get_next_ddcb(struct genwqe_dev *cd,
      struct ddcb_queue *queue,
      int *num)
{
 u64 *pu64;
 struct ddcb *pddcb;

 if (queue_free_ddcbs(queue) == 0)
  return ((void*)0);


 pddcb = &queue->ddcb_vaddr[queue->ddcb_next];



 if ((pddcb->icrc_hsi_shi_32 & DDCB_COMPLETED_BE32) == 0x00000000)
  return ((void*)0);

 *num = queue->ddcb_next;
 queue->ddcb_next = (queue->ddcb_next + 1) % queue->ddcb_max;


 pu64 = (u64 *)pddcb;
 pu64[0] = 0ULL;
 pu64[1] = 0ULL;


 pu64[0x80/8] = 0ULL;
 pu64[0x88/8] = 0ULL;
 pu64[0x90/8] = 0ULL;
 pu64[0x98/8] = 0ULL;
 pu64[0xd0/8] = 0ULL;

 pddcb->pre = DDCB_PRESET_PRE;
 pddcb->seqnum_16 = cpu_to_be16(queue->ddcb_seq++);
 return pddcb;
}
