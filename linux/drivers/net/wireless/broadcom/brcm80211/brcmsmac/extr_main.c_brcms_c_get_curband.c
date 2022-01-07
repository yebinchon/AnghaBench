
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_c_info {TYPE_1__* band; } ;
struct TYPE_2__ {int bandunit; } ;



int brcms_c_get_curband(struct brcms_c_info *wlc)
{
 return wlc->band->bandunit;
}
