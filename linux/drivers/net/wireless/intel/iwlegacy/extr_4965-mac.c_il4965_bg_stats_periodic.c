
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct il_priv {int status; } ;


 int CMD_ASYNC ;
 int S_EXIT_PENDING ;
 struct il_priv* from_timer (int ,struct timer_list*,int ) ;
 struct il_priv* il ;
 int il_is_ready_rf (struct il_priv*) ;
 int il_send_stats_request (struct il_priv*,int ,int) ;
 int stats_periodic ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
il4965_bg_stats_periodic(struct timer_list *t)
{
 struct il_priv *il = from_timer(il, t, stats_periodic);

 if (test_bit(S_EXIT_PENDING, &il->status))
  return;


 if (!il_is_ready_rf(il))
  return;

 il_send_stats_request(il, CMD_ASYNC, 0);
}
