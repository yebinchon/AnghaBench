
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint ;
typedef int u8 ;
struct brcms_c_rateset {size_t count; int* rates; } ;
struct brcms_c_info {TYPE_3__* band; TYPE_1__* hw; } ;
struct TYPE_5__ {size_t count; int* rates; } ;
struct TYPE_6__ {int* basic_rate; TYPE_2__ hw_rateset; } ;
struct TYPE_4__ {int d11core; } ;


 int BRCMS_RATE_FLAG ;
 int BRCMS_RATE_MASK ;
 int BRCM_MAXRATE ;
 int BRCM_RATE_12M ;
 int BRCM_RATE_24M ;
 int BRCM_RATE_6M ;
 int brcms_err (int ,char*,int) ;
 scalar_t__ is_ofdm_rate (int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void brcms_c_rate_lookup_init(struct brcms_c_info *wlc,
         struct brcms_c_rateset *rateset)
{
 u8 rate;
 u8 mandatory;
 u8 cck_basic = 0;
 u8 ofdm_basic = 0;
 u8 *br = wlc->band->basic_rate;
 uint i;


 memset(br, 0, BRCM_MAXRATE + 1);




 for (i = 0; i < rateset->count; i++) {

  if (!(rateset->rates[i] & BRCMS_RATE_FLAG))
   continue;


  rate = (rateset->rates[i] & BRCMS_RATE_MASK);

  if (rate > BRCM_MAXRATE) {
   brcms_err(wlc->hw->d11core, "brcms_c_rate_lookup_init: "
      "invalid rate 0x%X in rate set\n",
      rateset->rates[i]);
   continue;
  }

  br[rate] = rate;
 }
 for (i = 0; i < wlc->band->hw_rateset.count; i++) {
  rate = wlc->band->hw_rateset.rates[i];

  if (br[rate] != 0) {




   if (is_ofdm_rate(rate))
    ofdm_basic = rate;
   else
    cck_basic = rate;

   continue;
  }






  br[rate] = is_ofdm_rate(rate) ? ofdm_basic : cck_basic;

  if (br[rate] != 0)
   continue;

  if (is_ofdm_rate(rate)) {




   if (rate >= BRCM_RATE_24M)
    mandatory = BRCM_RATE_24M;
   else if (rate >= BRCM_RATE_12M)
    mandatory = BRCM_RATE_12M;
   else
    mandatory = BRCM_RATE_6M;
  } else {

   mandatory = rate;
  }

  br[rate] = mandatory;
 }
}
