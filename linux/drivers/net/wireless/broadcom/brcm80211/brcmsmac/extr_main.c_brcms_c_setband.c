
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
struct brcms_c_info {TYPE_1__* pub; int * bandstate; int band; } ;
struct TYPE_2__ {int up; } ;


 int brcms_c_bsinit (struct brcms_c_info*) ;
 int brcms_c_set_ps_ctrl (struct brcms_c_info*) ;

__attribute__((used)) static void brcms_c_setband(struct brcms_c_info *wlc,
        uint bandunit)
{
 wlc->band = wlc->bandstate[bandunit];

 if (!wlc->pub->up)
  return;


 brcms_c_set_ps_ctrl(wlc);


 brcms_c_bsinit(wlc);
}
