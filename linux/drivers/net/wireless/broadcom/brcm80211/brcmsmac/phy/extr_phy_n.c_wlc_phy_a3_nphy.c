
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef void* u16 ;
struct TYPE_3__ {void** pga; void** pad; } ;
struct nphy_ipa_txcalgains {int useindex; size_t index; TYPE_1__ gains; } ;
struct TYPE_4__ {int radiorev; int phy_rev; } ;
struct brcms_phy {TYPE_2__ pubpi; int radio_chanspec; } ;
typedef int s32 ;


 size_t ARRAY_SIZE (size_t*) ;
 int CAL_GCTRL ;
 scalar_t__ CHSPEC_IS2G (int ) ;
 int NPHY_TBL_ID_EPSILONTBL0 ;
 int NPHY_TBL_ID_EPSILONTBL1 ;
 scalar_t__ NREV_GE (int ,int) ;
 size_t PHY_CORE_0 ;
 size_t* pad_all_gain_codes_2057 ;
 size_t* pad_gain_codes_used_2057rev5 ;
 size_t* pad_gain_codes_used_2057rev7 ;
 size_t* pga_all_gain_codes_2057 ;
 int wlc_phy_a2_nphy (struct brcms_phy*,struct nphy_ipa_txcalgains*,int ,size_t) ;
 int wlc_phy_papd_decode_epsilon (int ,int*,int*) ;
 int wlc_phy_table_read_nphy (struct brcms_phy*,int ,int,int,int,int *) ;

__attribute__((used)) static u8 wlc_phy_a3_nphy(struct brcms_phy *pi, u8 start_gain, u8 core)
{
 int phy_a1;
 int phy_a2;
 bool phy_a3;
 struct nphy_ipa_txcalgains phy_a4;
 bool phy_a5 = 0;
 bool phy_a6 = 1;
 s32 phy_a7, phy_a8;
 u32 phy_a9;
 int phy_a10;
 bool phy_a11 = 0;
 int phy_a12;
 u8 phy_a13 = 0;
 u8 phy_a14;
 u8 *phy_a15 = ((void*)0);

 phy_a4.useindex = 1;
 phy_a12 = start_gain;

 if (NREV_GE(pi->pubpi.phy_rev, 7)) {

  phy_a2 = 20;
  phy_a1 = 1;

  if (CHSPEC_IS2G(pi->radio_chanspec)) {
   if (pi->pubpi.radiorev == 5) {

    phy_a15 = pad_gain_codes_used_2057rev5;
    phy_a13 =
     ARRAY_SIZE(pad_gain_codes_used_2057rev5) - 1;

   } else if ((pi->pubpi.radiorev == 7)
       || (pi->pubpi.radiorev == 8)) {

    phy_a15 = pad_gain_codes_used_2057rev7;
    phy_a13 =
     ARRAY_SIZE(pad_gain_codes_used_2057rev7) - 1;

   } else {

    phy_a15 = pad_all_gain_codes_2057;
    phy_a13 = ARRAY_SIZE(pad_all_gain_codes_2057) -
       1;
   }

  } else {

   phy_a15 = pga_all_gain_codes_2057;
   phy_a13 = ARRAY_SIZE(pga_all_gain_codes_2057) - 1;
  }

  phy_a14 = 0;

  for (phy_a10 = 0; phy_a10 < phy_a2; phy_a10++) {
   if (CHSPEC_IS2G(pi->radio_chanspec))
    phy_a4.gains.pad[core] =
     (u16) phy_a15[phy_a12];
   else
    phy_a4.gains.pga[core] =
     (u16) phy_a15[phy_a12];

   wlc_phy_a2_nphy(pi, &phy_a4, CAL_GCTRL, core);

   wlc_phy_table_read_nphy(pi,
      (core ==
       PHY_CORE_0 ?
       NPHY_TBL_ID_EPSILONTBL0 :
       NPHY_TBL_ID_EPSILONTBL1), 1,
      63, 32, &phy_a9);

   wlc_phy_papd_decode_epsilon(phy_a9, &phy_a7, &phy_a8);

   phy_a3 = ((phy_a7 == 4095) || (phy_a7 == -4096) ||
      (phy_a8 == 4095) || (phy_a8 == -4096));

   if (!phy_a6 && (phy_a3 != phy_a5)) {
    if (!phy_a3)
     phy_a12 -= (u8) phy_a1;

    phy_a11 = 1;
    break;
   }

   if (phy_a3)
    phy_a12 += (u8) phy_a1;
   else
    phy_a12 -= (u8) phy_a1;

   if ((phy_a12 < phy_a14) || (phy_a12 > phy_a13)) {
    if (phy_a12 < phy_a14)
     phy_a12 = phy_a14;
    else
     phy_a12 = phy_a13;

    phy_a11 = 1;
    break;
   }

   phy_a6 = 0;
   phy_a5 = phy_a3;
  }

 } else {
  phy_a2 = 10;
  phy_a1 = 8;
  for (phy_a10 = 0; phy_a10 < phy_a2; phy_a10++) {
   phy_a4.index = (u8) phy_a12;
   wlc_phy_a2_nphy(pi, &phy_a4, CAL_GCTRL, core);

   wlc_phy_table_read_nphy(pi,
      (core ==
       PHY_CORE_0 ?
       NPHY_TBL_ID_EPSILONTBL0 :
       NPHY_TBL_ID_EPSILONTBL1), 1,
      63, 32, &phy_a9);

   wlc_phy_papd_decode_epsilon(phy_a9, &phy_a7, &phy_a8);

   phy_a3 = ((phy_a7 == 4095) || (phy_a7 == -4096) ||
      (phy_a8 == 4095) || (phy_a8 == -4096));

   if (!phy_a6 && (phy_a3 != phy_a5)) {
    if (!phy_a3)
     phy_a12 -= (u8) phy_a1;

    phy_a11 = 1;
    break;
   }

   if (phy_a3)
    phy_a12 += (u8) phy_a1;
   else
    phy_a12 -= (u8) phy_a1;

   if ((phy_a12 < 0) || (phy_a12 > 127)) {
    if (phy_a12 < 0)
     phy_a12 = 0;
    else
     phy_a12 = 127;

    phy_a11 = 1;
    break;
   }

   phy_a6 = 0;
   phy_a5 = phy_a3;
  }

 }

 if (NREV_GE(pi->pubpi.phy_rev, 7))
  return (u8) phy_a15[phy_a12];
 else
  return (u8) phy_a12;

}
