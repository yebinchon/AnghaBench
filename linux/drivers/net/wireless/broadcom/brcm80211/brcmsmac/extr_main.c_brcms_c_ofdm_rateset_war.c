
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct brcms_c_info {TYPE_1__* band; TYPE_6__* default_bss; TYPE_5__* bsscfg; TYPE_2__* pub; } ;
struct TYPE_14__ {int * rates; } ;
struct TYPE_13__ {TYPE_7__ rateset; } ;
struct TYPE_12__ {TYPE_4__* current_bss; } ;
struct TYPE_10__ {int * rates; } ;
struct TYPE_11__ {TYPE_3__ rateset; } ;
struct TYPE_9__ {scalar_t__ associated; } ;
struct TYPE_8__ {int pi; } ;


 int wlc_phy_ofdm_rateset_war (int ,int) ;

__attribute__((used)) static void brcms_c_ofdm_rateset_war(struct brcms_c_info *wlc)
{
 u8 r;
 bool war = 0;

 if (wlc->pub->associated)
  r = wlc->bsscfg->current_bss->rateset.rates[0];
 else
  r = wlc->default_bss->rateset.rates[0];

 wlc_phy_ofdm_rateset_war(wlc->band->pi, war);
}
