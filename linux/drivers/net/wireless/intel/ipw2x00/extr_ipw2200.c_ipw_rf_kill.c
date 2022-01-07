
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; int lock; int adapter_restart; int rf_kill; } ;


 int HZ ;
 int IPW_DEBUG_RF_KILL (char*) ;
 int STATUS_RF_KILL_MASK ;
 scalar_t__ rf_kill_active (struct ipw_priv*) ;
 int schedule_delayed_work (int *,int) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipw_rf_kill(void *adapter)
{
 struct ipw_priv *priv = adapter;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);

 if (rf_kill_active(priv)) {
  IPW_DEBUG_RF_KILL("RF Kill active, rescheduling GPIO check\n");
  schedule_delayed_work(&priv->rf_kill, 2 * HZ);
  goto exit_unlock;
 }



 if (!(priv->status & STATUS_RF_KILL_MASK)) {
  IPW_DEBUG_RF_KILL("HW RF Kill no longer active, restarting "
      "device\n");


  schedule_work(&priv->adapter_restart);
 } else
  IPW_DEBUG_RF_KILL("HW RF Kill deactivated.  SW RF Kill still "
      "enabled\n");

      exit_unlock:
 spin_unlock_irqrestore(&priv->lock, flags);
}
