
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct brcmf_btcoex_info {int timer_on; int work; } ;


 int TRACE ;
 int brcmf_dbg (int ,char*) ;
 struct brcmf_btcoex_info* bt_local ;
 struct brcmf_btcoex_info* from_timer (int ,struct timer_list*,int ) ;
 int schedule_work (int *) ;
 int timer ;

__attribute__((used)) static void brcmf_btcoex_timerfunc(struct timer_list *t)
{
 struct brcmf_btcoex_info *bt_local = from_timer(bt_local, t, timer);
 brcmf_dbg(TRACE, "enter\n");

 bt_local->timer_on = 0;
 schedule_work(&bt_local->work);
}
