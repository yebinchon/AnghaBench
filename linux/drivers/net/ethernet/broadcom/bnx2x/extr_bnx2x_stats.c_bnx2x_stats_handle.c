
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x {int stats_state; int stats_lock; int panic; } ;
typedef enum bnx2x_stats_state { ____Placeholder_bnx2x_stats_state } bnx2x_stats_state ;
typedef enum bnx2x_stats_event { ____Placeholder_bnx2x_stats_event } bnx2x_stats_event ;
struct TYPE_2__ {int next_state; int (* action ) (struct bnx2x*) ;} ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_MSG_STATS ;
 int DP (int ,char*,int,...) ;
 int HZ ;
 int STATS_EVENT_UPDATE ;
 TYPE_1__** bnx2x_stats_stm ;
 int down_timeout (int *,int) ;
 scalar_t__ down_trylock (int *) ;
 scalar_t__ netif_msg_timer (struct bnx2x*) ;
 int stub1 (struct bnx2x*) ;
 scalar_t__ unlikely (int ) ;
 int up (int *) ;

void bnx2x_stats_handle(struct bnx2x *bp, enum bnx2x_stats_event event)
{
 enum bnx2x_stats_state state = bp->stats_state;

 if (unlikely(bp->panic))
  return;





 if (down_trylock(&bp->stats_lock)) {
  if (event == STATS_EVENT_UPDATE)
   return;

  DP(BNX2X_MSG_STATS,
     "Unlikely stats' lock contention [event %d]\n", event);
  if (unlikely(down_timeout(&bp->stats_lock, HZ / 10))) {
   BNX2X_ERR("Failed to take stats lock [event %d]\n",
      event);
   return;
  }
 }

 bnx2x_stats_stm[state][event].action(bp);
 bp->stats_state = bnx2x_stats_stm[state][event].next_state;

 up(&bp->stats_lock);

 if ((event != STATS_EVENT_UPDATE) || netif_msg_timer(bp))
  DP(BNX2X_MSG_STATS, "state %d -> event %d -> state %d\n",
     state, event, bp->stats_state);
}
