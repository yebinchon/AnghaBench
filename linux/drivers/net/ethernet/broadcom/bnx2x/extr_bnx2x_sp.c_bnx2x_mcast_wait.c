
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* wait_comp ) (struct bnx2x*,TYPE_1__*) ;int pstate; } ;
struct bnx2x_mcast_obj {TYPE_1__ raw; int sched_state; } ;
struct bnx2x {int dummy; } ;


 int EBUSY ;
 scalar_t__ bnx2x_state_wait (struct bnx2x*,int ,int ) ;
 scalar_t__ stub1 (struct bnx2x*,TYPE_1__*) ;

__attribute__((used)) static int bnx2x_mcast_wait(struct bnx2x *bp,
       struct bnx2x_mcast_obj *o)
{
 if (bnx2x_state_wait(bp, o->sched_state, o->raw.pstate) ||
   o->raw.wait_comp(bp, &o->raw))
  return -EBUSY;

 return 0;
}
