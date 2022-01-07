
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct brcms_cm_info {struct brcms_c_info* wlc; } ;
struct brcms_c_info {TYPE_2__* pub; TYPE_1__* hw; } ;
struct TYPE_4__ {int unit; } ;
struct TYPE_3__ {int d11core; } ;


 scalar_t__ CHANNEL_BANDUNIT (struct brcms_c_info*,int ) ;
 int CHSPEC_CHANNEL (int ) ;
 scalar_t__ brcms_c_chspec_malformed (int ) ;
 int brcms_err (int ,char*,int ,int ) ;
 scalar_t__ chspec_bandunit (int ) ;

__attribute__((used)) static bool
brcms_c_valid_chanspec_ext(struct brcms_cm_info *wlc_cm, u16 chspec)
{
 struct brcms_c_info *wlc = wlc_cm->wlc;
 u8 channel = CHSPEC_CHANNEL(chspec);


 if (brcms_c_chspec_malformed(chspec)) {
  brcms_err(wlc->hw->d11core, "wl%d: malformed chanspec 0x%x\n",
     wlc->pub->unit, chspec);
  return 0;
 }

 if (CHANNEL_BANDUNIT(wlc_cm->wlc, channel) !=
     chspec_bandunit(chspec))
  return 0;

 return 1;
}
