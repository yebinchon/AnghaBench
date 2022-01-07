
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int mutex; int scan_check; int scan_completed; int abort_scan; } ;


 scalar_t__ cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int il_force_scan_end (struct il_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void
il_cancel_scan_deferred_work(struct il_priv *il)
{
 cancel_work_sync(&il->abort_scan);
 cancel_work_sync(&il->scan_completed);

 if (cancel_delayed_work_sync(&il->scan_check)) {
  mutex_lock(&il->mutex);
  il_force_scan_end(il);
  mutex_unlock(&il->mutex);
 }
}
