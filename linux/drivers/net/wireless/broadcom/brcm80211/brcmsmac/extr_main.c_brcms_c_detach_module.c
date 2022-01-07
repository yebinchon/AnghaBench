
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int * ampdu; int * asi; } ;


 int brcms_c_ampdu_detach (int *) ;
 int brcms_c_antsel_detach (int *) ;
 int brcms_c_stf_detach (struct brcms_c_info*) ;

__attribute__((used)) static void brcms_c_detach_module(struct brcms_c_info *wlc)
{
 if (wlc->asi) {
  brcms_c_antsel_detach(wlc->asi);
  wlc->asi = ((void*)0);
 }

 if (wlc->ampdu) {
  brcms_c_ampdu_detach(wlc->ampdu);
  wlc->ampdu = ((void*)0);
 }

 brcms_c_stf_detach(wlc);
}
