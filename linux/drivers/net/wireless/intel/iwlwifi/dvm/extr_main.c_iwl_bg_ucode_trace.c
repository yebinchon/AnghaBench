
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ ucode_trace; } ;
struct iwl_priv {int ucode_trace; TYPE_1__ event_log; int status; } ;


 int STATUS_EXIT_PENDING ;
 int UCODE_TRACE_PERIOD ;
 struct iwl_priv* from_timer (int ,struct timer_list*,int ) ;
 int iwl_continuous_event_trace (struct iwl_priv*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct iwl_priv* priv ;
 scalar_t__ test_bit (int ,int *) ;
 int ucode_trace ;

__attribute__((used)) static void iwl_bg_ucode_trace(struct timer_list *t)
{
 struct iwl_priv *priv = from_timer(priv, t, ucode_trace);

 if (test_bit(STATUS_EXIT_PENDING, &priv->status))
  return;

 if (priv->event_log.ucode_trace) {
  iwl_continuous_event_trace(priv);

  mod_timer(&priv->ucode_trace,
    jiffies + msecs_to_jiffies(UCODE_TRACE_PERIOD));
 }
}
