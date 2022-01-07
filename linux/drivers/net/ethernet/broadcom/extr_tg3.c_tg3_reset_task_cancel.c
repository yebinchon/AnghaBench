
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int reset_task; } ;


 int RESET_TASK_PENDING ;
 int TX_RECOVERY_PENDING ;
 int cancel_work_sync (int *) ;
 int tg3_flag_clear (struct tg3*,int ) ;

__attribute__((used)) static inline void tg3_reset_task_cancel(struct tg3 *tp)
{
 cancel_work_sync(&tp->reset_task);
 tg3_flag_clear(tp, RESET_TASK_PENDING);
 tg3_flag_clear(tp, TX_RECOVERY_PENDING);
}
