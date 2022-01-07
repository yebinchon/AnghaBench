
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pulse_elem {int head; } ;
struct pri_detector {scalar_t__ count; } ;


 int list_del_init (int *) ;
 int pool_put_pulse_elem (struct pulse_elem*) ;
 struct pulse_elem* pulse_queue_get_tail (struct pri_detector*) ;

__attribute__((used)) static bool pulse_queue_dequeue(struct pri_detector *pde)
{
 struct pulse_elem *p = pulse_queue_get_tail(pde);
 if (p != ((void*)0)) {
  list_del_init(&p->head);
  pde->count--;

  pool_put_pulse_elem(p);
 }
 return (pde->count > 0);
}
