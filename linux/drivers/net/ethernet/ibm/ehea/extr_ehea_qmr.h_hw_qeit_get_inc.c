
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_queue {int dummy; } ;


 void* hw_qeit_get (struct hw_queue*) ;
 int hw_qeit_inc (struct hw_queue*) ;

__attribute__((used)) static inline void *hw_qeit_get_inc(struct hw_queue *queue)
{
 void *retvalue = hw_qeit_get(queue);
 hw_qeit_inc(queue);
 return retvalue;
}
