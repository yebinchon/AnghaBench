
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ar5523 {int tx_wd_work; int hw; } ;


 struct ar5523* ar ;
 int ar5523_dbg (struct ar5523*,char*) ;
 struct ar5523* from_timer (int ,struct timer_list*,int ) ;
 int ieee80211_queue_work (int ,int *) ;
 int tx_wd_timer ;

__attribute__((used)) static void ar5523_tx_wd_timer(struct timer_list *t)
{
 struct ar5523 *ar = from_timer(ar, t, tx_wd_timer);

 ar5523_dbg(ar, "TX watchdog timer triggered\n");
 ieee80211_queue_work(ar->hw, &ar->tx_wd_work);
}
