
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int reset_task; int tg3_flags; } ;


 int TG3_FLAG_RESET_TASK_PENDING ;
 int schedule_work (int *) ;
 int test_and_set_bit (int ,int ) ;

__attribute__((used)) static inline void tg3_reset_task_schedule(struct tg3 *tp)
{
 if (!test_and_set_bit(TG3_FLAG_RESET_TASK_PENDING, tp->tg3_flags))
  schedule_work(&tp->reset_task);
}
