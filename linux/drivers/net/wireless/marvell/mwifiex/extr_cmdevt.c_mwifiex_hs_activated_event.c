
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct TYPE_3__ {int hs_activated; int hs_activate_wait_q_woken; int hs_activate_wait_q; int work_flags; } ;


 int EVENT ;
 int MWIFIEX_IS_HS_CONFIGURED ;
 int RXREOR_FORCE_NO_DROP ;
 int mwifiex_dbg (TYPE_1__*,int ,char*) ;
 int mwifiex_update_rxreor_flags (TYPE_1__*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

void
mwifiex_hs_activated_event(struct mwifiex_private *priv, u8 activated)
{
 if (activated) {
  if (test_bit(MWIFIEX_IS_HS_CONFIGURED,
        &priv->adapter->work_flags)) {
   priv->adapter->hs_activated = 1;
   mwifiex_update_rxreor_flags(priv->adapter,
          RXREOR_FORCE_NO_DROP);
   mwifiex_dbg(priv->adapter, EVENT,
        "event: hs_activated\n");
   priv->adapter->hs_activate_wait_q_woken = 1;
   wake_up_interruptible(
    &priv->adapter->hs_activate_wait_q);
  } else {
   mwifiex_dbg(priv->adapter, EVENT,
        "event: HS not configured\n");
  }
 } else {
  mwifiex_dbg(priv->adapter, EVENT,
       "event: hs_deactivated\n");
  priv->adapter->hs_activated = 0;
 }
}
