
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct tg3 {TYPE_1__ timer; scalar_t__ timer_offset; int timer_multiplier; int timer_counter; int asf_multiplier; int asf_counter; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void tg3_timer_start(struct tg3 *tp)
{
 tp->asf_counter = tp->asf_multiplier;
 tp->timer_counter = tp->timer_multiplier;

 tp->timer.expires = jiffies + tp->timer_offset;
 add_timer(&tp->timer);
}
