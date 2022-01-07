
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_queue {scalar_t__ current_q_offset; scalar_t__ pagesize; scalar_t__ queue_length; } ;


 int EHEA_PAGESIZE ;
 void* hw_qeit_get (struct hw_queue*) ;
 int pr_err (char*) ;

__attribute__((used)) static void *hw_qpageit_get_inc(struct hw_queue *queue)
{
 void *retvalue = hw_qeit_get(queue);

 queue->current_q_offset += queue->pagesize;
 if (queue->current_q_offset > queue->queue_length) {
  queue->current_q_offset -= queue->pagesize;
  retvalue = ((void*)0);
 } else if (((u64) retvalue) & (EHEA_PAGESIZE-1)) {
  pr_err("not on pageboundary\n");
  retvalue = ((void*)0);
 }
 return retvalue;
}
