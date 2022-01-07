
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct cpsw_ale {TYPE_1__ timer; scalar_t__ ageout; } ;


 int ALE_CLEAR ;
 int ALE_ENABLE ;
 int add_timer (TYPE_1__*) ;
 int cpsw_ale_control_set (struct cpsw_ale*,int ,int ,int) ;
 int cpsw_ale_timer ;
 scalar_t__ jiffies ;
 int timer_setup (TYPE_1__*,int ,int ) ;

void cpsw_ale_start(struct cpsw_ale *ale)
{
 cpsw_ale_control_set(ale, 0, ALE_ENABLE, 1);
 cpsw_ale_control_set(ale, 0, ALE_CLEAR, 1);

 timer_setup(&ale->timer, cpsw_ale_timer, 0);
 if (ale->ageout) {
  ale->timer.expires = jiffies + ale->ageout;
  add_timer(&ale->timer);
 }
}
