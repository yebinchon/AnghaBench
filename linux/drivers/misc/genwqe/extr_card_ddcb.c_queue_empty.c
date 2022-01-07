
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddcb_queue {scalar_t__ ddcb_next; scalar_t__ ddcb_act; } ;



__attribute__((used)) static int queue_empty(struct ddcb_queue *queue)
{
 return queue->ddcb_next == queue->ddcb_act;
}
