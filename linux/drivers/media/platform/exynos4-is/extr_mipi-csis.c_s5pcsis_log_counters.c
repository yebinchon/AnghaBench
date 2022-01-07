
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csis_state {int slock; TYPE_1__* events; int sd; } ;
struct TYPE_2__ {scalar_t__ counter; int name; } ;


 int S5PCSIS_NUM_EVENTS ;
 scalar_t__ debug ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_info (int *,char*,int ,scalar_t__) ;

__attribute__((used)) static void s5pcsis_log_counters(struct csis_state *state, bool non_errors)
{
 int i = non_errors ? S5PCSIS_NUM_EVENTS : S5PCSIS_NUM_EVENTS - 4;
 unsigned long flags;

 spin_lock_irqsave(&state->slock, flags);

 for (i--; i >= 0; i--) {
  if (state->events[i].counter > 0 || debug)
   v4l2_info(&state->sd, "%s events: %d\n",
      state->events[i].name,
      state->events[i].counter);
 }
 spin_unlock_irqrestore(&state->slock, flags);
}
