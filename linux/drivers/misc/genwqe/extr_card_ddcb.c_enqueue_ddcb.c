
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct genwqe_dev {int dummy; } ;
struct ddcb_queue {int ddcb_max; int IO_QUEUE_OFFSET; struct ddcb* ddcb_vaddr; } ;
struct ddcb {int icrc_hsi_shi_32; } ;
typedef int __be32 ;


 int DDCB_COMPLETED_BE32 ;
 int DDCB_NEXT_BE32 ;
 int RET_DDCB_APPENDED ;
 int RET_DDCB_TAPPED ;
 int __genwqe_writeq (struct genwqe_dev*,int ,int) ;
 int cmpxchg (int*,int,int) ;
 int ddcb_mark_appended (struct ddcb*) ;
 int ddcb_mark_tapped (struct ddcb*) ;
 int ddcb_mark_unused (struct ddcb*) ;
 int wmb () ;

__attribute__((used)) static int enqueue_ddcb(struct genwqe_dev *cd, struct ddcb_queue *queue,
   struct ddcb *pddcb, int ddcb_no)
{
 unsigned int try;
 int prev_no;
 struct ddcb *prev_ddcb;
 __be32 old, new, icrc_hsi_shi;
 u64 num;






 ddcb_mark_unused(pddcb);


 prev_no = (ddcb_no == 0) ? queue->ddcb_max - 1 : ddcb_no - 1;
 prev_ddcb = &queue->ddcb_vaddr[prev_no];






 ddcb_mark_appended(pddcb);
 for (try = 0; try < 2; try++) {
  old = prev_ddcb->icrc_hsi_shi_32;


  if ((old & DDCB_COMPLETED_BE32) != 0x00000000)
   break;

  new = (old | DDCB_NEXT_BE32);

  wmb();
  icrc_hsi_shi = cmpxchg(&prev_ddcb->icrc_hsi_shi_32, old, new);

  if (icrc_hsi_shi == old)
   return RET_DDCB_APPENDED;
 }


 ddcb_mark_tapped(pddcb);
 num = (u64)ddcb_no << 8;

 wmb();
 __genwqe_writeq(cd, queue->IO_QUEUE_OFFSET, num);

 return RET_DDCB_TAPPED;
}
