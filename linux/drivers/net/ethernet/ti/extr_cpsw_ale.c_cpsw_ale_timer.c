
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct cpsw_ale {TYPE_1__ timer; scalar_t__ ageout; } ;


 int ALE_AGEOUT ;
 int add_timer (TYPE_1__*) ;
 struct cpsw_ale* ale ;
 int cpsw_ale_control_set (struct cpsw_ale*,int ,int ,int) ;
 struct cpsw_ale* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int timer ;

__attribute__((used)) static void cpsw_ale_timer(struct timer_list *t)
{
 struct cpsw_ale *ale = from_timer(ale, t, timer);

 cpsw_ale_control_set(ale, 0, ALE_AGEOUT, 1);

 if (ale->ageout) {
  ale->timer.expires = jiffies + ale->ageout;
  add_timer(&ale->timer);
 }
}
