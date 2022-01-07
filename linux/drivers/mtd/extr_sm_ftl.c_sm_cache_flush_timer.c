
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sm_ftl {int flush_work; } ;


 int cache_flush_workqueue ;
 struct sm_ftl* from_timer (int ,struct timer_list*,int ) ;
 struct sm_ftl* ftl ;
 int queue_work (int ,int *) ;
 int timer ;

__attribute__((used)) static void sm_cache_flush_timer(struct timer_list *t)
{
 struct sm_ftl *ftl = from_timer(ftl, t, timer);
 queue_work(cache_flush_workqueue, &ftl->flush_work);
}
