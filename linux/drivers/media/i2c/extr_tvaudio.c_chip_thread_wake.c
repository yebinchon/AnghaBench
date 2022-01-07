
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct CHIPSTATE {int thread; } ;


 struct CHIPSTATE* chip ;
 struct CHIPSTATE* from_timer (int ,struct timer_list*,int ) ;
 int wake_up_process (int ) ;
 int wt ;

__attribute__((used)) static void chip_thread_wake(struct timer_list *t)
{
 struct CHIPSTATE *chip = from_timer(chip, t, wt);
 wake_up_process(chip->thread);
}
