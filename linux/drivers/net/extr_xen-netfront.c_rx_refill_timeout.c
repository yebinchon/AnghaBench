
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct netfront_queue {int napi; } ;


 struct netfront_queue* from_timer (int ,struct timer_list*,int ) ;
 int napi_schedule (int *) ;
 struct netfront_queue* queue ;
 int rx_refill_timer ;

__attribute__((used)) static void rx_refill_timeout(struct timer_list *t)
{
 struct netfront_queue *queue = from_timer(queue, t, rx_refill_timer);
 napi_schedule(&queue->napi);
}
