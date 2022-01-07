
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {int mutex; int rx_refill_work; int tx_wd_work; int tx_wd_timer; int flags; int stat_work; } ;


 int AR5523_HW_UP ;
 int UATH_LED_ACTIVITY ;
 int UATH_LED_LINK ;
 int UATH_LED_OFF ;
 int WDCMSG_TARGET_STOP ;
 int ar5523_cancel_rx_bufs (struct ar5523*) ;
 int ar5523_cmd_write (struct ar5523*,int ,int *,int ,int ) ;
 int ar5523_dbg (struct ar5523*,char*) ;
 int ar5523_set_ledsteady (struct ar5523*,int ,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ar5523_stop(struct ieee80211_hw *hw)
{
 struct ar5523 *ar = hw->priv;

 ar5523_dbg(ar, "stop called\n");

 cancel_delayed_work_sync(&ar->stat_work);
 mutex_lock(&ar->mutex);
 clear_bit(AR5523_HW_UP, &ar->flags);

 ar5523_set_ledsteady(ar, UATH_LED_LINK, UATH_LED_OFF);
 ar5523_set_ledsteady(ar, UATH_LED_ACTIVITY, UATH_LED_OFF);

 ar5523_cmd_write(ar, WDCMSG_TARGET_STOP, ((void*)0), 0, 0);

 del_timer_sync(&ar->tx_wd_timer);
 cancel_work_sync(&ar->tx_wd_work);
 cancel_work_sync(&ar->rx_refill_work);
 ar5523_cancel_rx_bufs(ar);
 mutex_unlock(&ar->mutex);
}
