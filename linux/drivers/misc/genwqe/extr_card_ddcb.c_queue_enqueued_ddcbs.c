
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddcb_queue {scalar_t__ ddcb_next; scalar_t__ ddcb_act; int ddcb_max; } ;



__attribute__((used)) static int queue_enqueued_ddcbs(struct ddcb_queue *queue)
{
 if (queue->ddcb_next >= queue->ddcb_act)
  return queue->ddcb_next - queue->ddcb_act;

 return queue->ddcb_max - (queue->ddcb_act - queue->ddcb_next);
}
