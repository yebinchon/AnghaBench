
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_UNINTERRUPTIBLE ;
 int schedule () ;
 int set_current_state (int ) ;

void lkdtm_HUNG_TASK(void)
{
 set_current_state(TASK_UNINTERRUPTIBLE);
 schedule();
}
