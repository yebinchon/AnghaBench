
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csis_state {int slock; TYPE_1__* events; } ;
struct TYPE_2__ {scalar_t__ counter; } ;


 int S5PCSIS_NUM_EVENTS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void s5pcsis_clear_counters(struct csis_state *state)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&state->slock, flags);
 for (i = 0; i < S5PCSIS_NUM_EVENTS; i++)
  state->events[i].counter = 0;
 spin_unlock_irqrestore(&state->slock, flags);
}
