
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pstate; } ;
struct bnx2x_mcast_obj {TYPE_1__ raw; int sched_state; } ;


 int set_bit (int ,int ) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static void bnx2x_mcast_set_sched(struct bnx2x_mcast_obj *o)
{
 smp_mb__before_atomic();
 set_bit(o->sched_state, o->raw.pstate);
 smp_mb__after_atomic();
}
