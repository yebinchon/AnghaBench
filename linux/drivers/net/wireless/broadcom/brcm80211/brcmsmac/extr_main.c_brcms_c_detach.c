
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct brcms_c_info {int cmi; } ;


 int brcms_b_detach (struct brcms_c_info*) ;
 int brcms_c_channel_mgr_detach (int ) ;
 int brcms_c_detach_mfree (struct brcms_c_info*) ;
 int brcms_c_detach_module (struct brcms_c_info*) ;
 int brcms_c_radio_monitor_stop (struct brcms_c_info*) ;
 int brcms_c_timers_deinit (struct brcms_c_info*) ;

uint brcms_c_detach(struct brcms_c_info *wlc)
{
 uint callbacks;

 if (wlc == ((void*)0))
  return 0;

 brcms_b_detach(wlc);


 callbacks = 0;
 if (!brcms_c_radio_monitor_stop(wlc))
  callbacks++;

 brcms_c_channel_mgr_detach(wlc->cmi);

 brcms_c_timers_deinit(wlc);

 brcms_c_detach_module(wlc);

 brcms_c_detach_mfree(wlc);
 return callbacks;
}
