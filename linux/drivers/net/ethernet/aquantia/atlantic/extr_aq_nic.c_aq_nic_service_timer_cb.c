
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct aq_nic_s {int service_task; int service_timer; } ;


 scalar_t__ AQ_CFG_SERVICE_TIMER_INTERVAL ;
 int aq_ndev_schedule_work (int *) ;
 struct aq_nic_s* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct aq_nic_s* self ;
 int service_timer ;

__attribute__((used)) static void aq_nic_service_timer_cb(struct timer_list *t)
{
 struct aq_nic_s *self = from_timer(self, t, service_timer);

 mod_timer(&self->service_timer, jiffies + AQ_CFG_SERVICE_TIMER_INTERVAL);

 aq_ndev_schedule_work(&self->service_task);
}
