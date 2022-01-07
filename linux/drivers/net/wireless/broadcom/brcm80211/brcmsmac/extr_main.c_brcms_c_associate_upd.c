
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {TYPE_1__* pub; } ;
struct TYPE_2__ {int associated; } ;



void brcms_c_associate_upd(struct brcms_c_info *wlc, bool state)
{
 wlc->pub->associated = state;
}
