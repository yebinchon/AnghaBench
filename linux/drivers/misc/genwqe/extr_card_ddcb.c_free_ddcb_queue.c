
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int dummy; } ;
struct ddcb_queue {int ddcb_max; unsigned long long ddcb_daddr; int * ddcb_vaddr; int * ddcb_req; } ;
struct ddcb {int dummy; } ;


 int PAGE_SIZE ;
 int __genwqe_free_consistent (struct genwqe_dev*,unsigned int,int *,unsigned long long) ;
 int kfree (int *) ;
 unsigned int roundup (int,int ) ;

__attribute__((used)) static void free_ddcb_queue(struct genwqe_dev *cd, struct ddcb_queue *queue)
{
 unsigned int queue_size;

 queue_size = roundup(queue->ddcb_max * sizeof(struct ddcb), PAGE_SIZE);

 kfree(queue->ddcb_req);
 queue->ddcb_req = ((void*)0);

 if (queue->ddcb_vaddr) {
  __genwqe_free_consistent(cd, queue_size, queue->ddcb_vaddr,
     queue->ddcb_daddr);
  queue->ddcb_vaddr = ((void*)0);
  queue->ddcb_daddr = 0ull;
 }
}
