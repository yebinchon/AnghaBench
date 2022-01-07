
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pbc; } ;
struct ar9170 {int registered; int hw; int restart_work; TYPE_1__ wps; } ;


 int cancel_work_sync (int *) ;
 int carl9170_cancel_worker (struct ar9170*) ;
 int carl9170_debugfs_unregister (struct ar9170*) ;
 int carl9170_led_unregister (struct ar9170*) ;
 int carl9170_unregister_hwrng (struct ar9170*) ;
 int ieee80211_unregister_hw (int ) ;
 int input_unregister_device (int *) ;

void carl9170_unregister(struct ar9170 *ar)
{
 if (!ar->registered)
  return;

 ar->registered = 0;
 carl9170_cancel_worker(ar);
 cancel_work_sync(&ar->restart_work);

 ieee80211_unregister_hw(ar->hw);
}
