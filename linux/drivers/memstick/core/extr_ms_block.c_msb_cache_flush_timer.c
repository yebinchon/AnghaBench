
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct msb_data {int need_flush_cache; int io_work; int io_queue; } ;


 int cache_flush_timer ;
 struct msb_data* from_timer (int ,struct timer_list*,int ) ;
 struct msb_data* msb ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void msb_cache_flush_timer(struct timer_list *t)
{
 struct msb_data *msb = from_timer(msb, t, cache_flush_timer);
 msb->need_flush_cache = 1;
 queue_work(msb->io_queue, &msb->io_work);
}
