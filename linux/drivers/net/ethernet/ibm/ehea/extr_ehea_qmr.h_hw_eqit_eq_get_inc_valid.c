
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hw_queue {int toggle_state; } ;


 int hw_qeit_eq_get_inc (struct hw_queue*) ;
 void* hw_qeit_get (struct hw_queue*) ;

__attribute__((used)) static inline void *hw_eqit_eq_get_inc_valid(struct hw_queue *queue)
{
 void *retvalue = hw_qeit_get(queue);
 u32 qe = *(u8 *)retvalue;
 if ((qe >> 7) == (queue->toggle_state & 1))
  hw_qeit_eq_get_inc(queue);
 else
  retvalue = ((void*)0);
 return retvalue;
}
