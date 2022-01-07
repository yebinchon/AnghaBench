
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct iwl_priv {int status; } ;


 int CMD_ASYNC ;
 int STATUS_EXIT_PENDING ;
 struct iwl_priv* from_timer (int ,struct timer_list*,int ) ;
 int iwl_is_ready_rf (struct iwl_priv*) ;
 int iwl_send_statistics_request (struct iwl_priv*,int ,int) ;
 struct iwl_priv* priv ;
 int statistics_periodic ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void iwl_bg_statistics_periodic(struct timer_list *t)
{
 struct iwl_priv *priv = from_timer(priv, t, statistics_periodic);

 if (test_bit(STATUS_EXIT_PENDING, &priv->status))
  return;


 if (!iwl_is_ready_rf(priv))
  return;

 iwl_send_statistics_request(priv, CMD_ASYNC, 0);
}
