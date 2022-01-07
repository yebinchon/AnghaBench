
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_queue {scalar_t__ current_q_offset; } ;


 void* hw_qeit_get (struct hw_queue*) ;

__attribute__((used)) static inline void *hw_qeit_reset(struct hw_queue *queue)
{
 queue->current_q_offset = 0;
 return hw_qeit_get(queue);
}
