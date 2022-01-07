
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ssb_sprom {int antswitch; int ant_available_bg; int ant_available_a; } ;
struct brcms_c_info {TYPE_4__* hw; TYPE_2__* pub; } ;
struct antsel_info {int antsel_avail; int antsel_antswitch; int antcfg_cur; int antcfg_11n; void* antsel_type; TYPE_2__* pub; struct brcms_c_info* wlc; } ;
struct TYPE_8__ {TYPE_3__* d11core; } ;
struct TYPE_7__ {TYPE_1__* bus; } ;
struct TYPE_6__ {int sromrev; int boardflags2; } ;
struct TYPE_5__ {struct ssb_sprom sprom; } ;


 void* ANTSEL_2x3 ;
 void* ANTSEL_2x4 ;
 void* ANTSEL_NA ;



 int BFL2_2X4_DIV ;
 int GFP_ATOMIC ;
 int brcms_b_antsel_type_set (TYPE_4__*,void*) ;
 int brcms_c_antsel_init_cfg (struct antsel_info*,int *,int) ;
 int brcms_err (TYPE_3__*,char*) ;
 struct antsel_info* kzalloc (int,int ) ;

struct antsel_info *brcms_c_antsel_attach(struct brcms_c_info *wlc)
{
 struct antsel_info *asi;
 struct ssb_sprom *sprom = &wlc->hw->d11core->bus->sprom;

 asi = kzalloc(sizeof(struct antsel_info), GFP_ATOMIC);
 if (!asi)
  return ((void*)0);

 asi->wlc = wlc;
 asi->pub = wlc->pub;
 asi->antsel_type = ANTSEL_NA;
 asi->antsel_avail = 0;
 asi->antsel_antswitch = sprom->antswitch;

 if ((asi->pub->sromrev >= 4) && (asi->antsel_antswitch != 0)) {
  switch (asi->antsel_antswitch) {
  case 130:
  case 129:
  case 128:

   asi->antsel_type = ANTSEL_2x3;

   if ((sprom->ant_available_bg == 7) ||
       (sprom->ant_available_a == 7)) {
    asi->antsel_avail = 1;
   } else if (
    sprom->ant_available_bg == 3 ||
    sprom->ant_available_a == 3) {
    asi->antsel_avail = 0;
   } else {
    asi->antsel_avail = 0;
    brcms_err(wlc->hw->d11core,
       "antsel_attach: 2o3 "
       "board cfg invalid\n");
   }

   break;
  default:
   break;
  }
 } else if ((asi->pub->sromrev == 4) &&
     (sprom->ant_available_bg == 7) &&
     (sprom->ant_available_a == 0)) {

  asi->antsel_type = ANTSEL_2x3;
  asi->antsel_avail = 1;
 } else if (asi->pub->boardflags2 & BFL2_2X4_DIV) {
  asi->antsel_type = ANTSEL_2x4;
  asi->antsel_avail = 1;
 }


 brcms_b_antsel_type_set(wlc->hw, asi->antsel_type);


 brcms_c_antsel_init_cfg(asi, &asi->antcfg_11n, 1);
 brcms_c_antsel_init_cfg(asi, &asi->antcfg_cur, 1);

 return asi;
}
