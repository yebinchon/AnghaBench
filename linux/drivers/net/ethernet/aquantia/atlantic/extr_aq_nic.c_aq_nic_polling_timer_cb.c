
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct aq_vec_s {int dummy; } ;
struct aq_nic_s {unsigned int aq_vecs; int polling_timer; struct aq_vec_s** aq_vec; } ;


 scalar_t__ AQ_CFG_POLLING_TIMER_INTERVAL ;
 int aq_vec_isr (unsigned int,void*) ;
 struct aq_nic_s* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int polling_timer ;
 struct aq_nic_s* self ;

__attribute__((used)) static void aq_nic_polling_timer_cb(struct timer_list *t)
{
 struct aq_nic_s *self = from_timer(self, t, polling_timer);
 struct aq_vec_s *aq_vec = ((void*)0);
 unsigned int i = 0U;

 for (i = 0U, aq_vec = self->aq_vec[0];
  self->aq_vecs > i; ++i, aq_vec = self->aq_vec[i])
  aq_vec_isr(i, (void *)aq_vec);

 mod_timer(&self->polling_timer, jiffies +
    AQ_CFG_POLLING_TIMER_INTERVAL);
}
