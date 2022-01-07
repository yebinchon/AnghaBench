
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int status; int mutex; } ;


 int IWL_DEBUG_SCAN (struct iwl_priv*,char*) ;
 int STATUS_SCAN_HW ;
 int iwl_do_scan_abort (struct iwl_priv*) ;
 int iwl_process_scan_complete (struct iwl_priv*) ;
 unsigned long jiffies ;
 int lockdep_assert_held (int *) ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int msleep (int) ;
 int test_bit (int ,int *) ;
 scalar_t__ time_before_eq (unsigned long,unsigned long) ;

void iwl_scan_cancel_timeout(struct iwl_priv *priv, unsigned long ms)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(ms);

 lockdep_assert_held(&priv->mutex);

 IWL_DEBUG_SCAN(priv, "Scan cancel timeout\n");

 iwl_do_scan_abort(priv);

 while (time_before_eq(jiffies, timeout)) {
  if (!test_bit(STATUS_SCAN_HW, &priv->status))
   goto finished;
  msleep(20);
 }

 return;

 finished:
 iwl_process_scan_complete(priv);
}
