
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int * radio_timer; int * wdtimer; } ;


 int brcms_free_timer (int *) ;

__attribute__((used)) static void brcms_c_timers_deinit(struct brcms_c_info *wlc)
{

 if (wlc->wdtimer) {
  brcms_free_timer(wlc->wdtimer);
  wlc->wdtimer = ((void*)0);
 }
 if (wlc->radio_timer) {
  brcms_free_timer(wlc->radio_timer);
  wlc->radio_timer = ((void*)0);
 }
}
