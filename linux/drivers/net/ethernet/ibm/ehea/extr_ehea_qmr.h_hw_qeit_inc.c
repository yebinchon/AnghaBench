
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_queue {scalar_t__ current_q_offset; scalar_t__ qe_size; scalar_t__ queue_length; int toggle_state; } ;



__attribute__((used)) static inline void hw_qeit_inc(struct hw_queue *queue)
{
 queue->current_q_offset += queue->qe_size;
 if (queue->current_q_offset >= queue->queue_length) {
  queue->current_q_offset = 0;

  queue->toggle_state = (~queue->toggle_state) & 1;
 }
}
