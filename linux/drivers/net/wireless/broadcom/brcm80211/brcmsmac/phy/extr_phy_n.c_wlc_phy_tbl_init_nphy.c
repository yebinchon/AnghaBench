
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint ;
typedef int u8 ;
struct TYPE_6__ {int antswctrllut; } ;
struct TYPE_5__ {int antswctrllut; } ;
struct TYPE_4__ {int phy_rev; } ;
struct brcms_phy {int aa2g; TYPE_3__ srom_fem5g; TYPE_2__ srom_fem2g; int radio_chanspec; TYPE_1__ pubpi; scalar_t__ phy_init_por; } ;


 size_t ANT_SWCTRL_TBL_REV3_IDX ;
 scalar_t__ CHSPEC_IS2G (int ) ;
 int NPHY_TBL_ID_ANTSWCTRLLUT ;
 scalar_t__ NREV_GE (int ,int) ;
 int * ant_sw_ctrl_tbl_rev8 ;
 int * ant_sw_ctrl_tbl_rev8_2057v7_core0 ;
 int * ant_sw_ctrl_tbl_rev8_2057v7_core1 ;
 int * ant_sw_ctrl_tbl_rev8_2o3 ;
 int * mimophytbl_info_rev0_volatile ;
 int * mimophytbl_info_rev3_volatile ;
 int * mimophytbl_info_rev3_volatile1 ;
 int * mimophytbl_info_rev3_volatile2 ;
 int * mimophytbl_info_rev3_volatile3 ;
 size_t mimophytbl_info_sz_rev0_volatile ;
 size_t mimophytbl_info_sz_rev3_volatile ;
 int wlc_phy_static_table_download_nphy (struct brcms_phy*) ;
 int wlc_phy_table_write_nphy (struct brcms_phy*,int ,int,int,int,int *) ;
 int wlc_phy_write_table_nphy (struct brcms_phy*,int *) ;

__attribute__((used)) static void wlc_phy_tbl_init_nphy(struct brcms_phy *pi)
{
 uint idx = 0;
 u8 antswctrllut;

 if (pi->phy_init_por)
  wlc_phy_static_table_download_nphy(pi);

 if (NREV_GE(pi->pubpi.phy_rev, 7)) {

  antswctrllut = CHSPEC_IS2G(pi->radio_chanspec) ?
          pi->srom_fem2g.antswctrllut : pi->srom_fem5g.
          antswctrllut;

  switch (antswctrllut) {
  case 0:

   break;

  case 1:

   if (pi->aa2g == 7)
    wlc_phy_table_write_nphy(
     pi,
     NPHY_TBL_ID_ANTSWCTRLLUT,
     2, 0x21, 8,
     &ant_sw_ctrl_tbl_rev8_2o3[0]);
   else
    wlc_phy_table_write_nphy(
     pi,
     NPHY_TBL_ID_ANTSWCTRLLUT,
     2, 0x21, 8,
     &ant_sw_ctrl_tbl_rev8
     [0]);

   wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_ANTSWCTRLLUT,
       2, 0x25, 8,
       &ant_sw_ctrl_tbl_rev8[2]);
   wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_ANTSWCTRLLUT,
       2, 0x29, 8,
       &ant_sw_ctrl_tbl_rev8[4]);
   break;

  case 2:

   wlc_phy_table_write_nphy(
    pi, NPHY_TBL_ID_ANTSWCTRLLUT,
    2, 0x1, 8,
    &ant_sw_ctrl_tbl_rev8_2057v7_core0[0]);
   wlc_phy_table_write_nphy(
    pi, NPHY_TBL_ID_ANTSWCTRLLUT,
    2, 0x5, 8,
    &ant_sw_ctrl_tbl_rev8_2057v7_core0[2]);
   wlc_phy_table_write_nphy(
    pi, NPHY_TBL_ID_ANTSWCTRLLUT,
    2, 0x9, 8,
    &ant_sw_ctrl_tbl_rev8_2057v7_core0[4]);

   wlc_phy_table_write_nphy(
    pi, NPHY_TBL_ID_ANTSWCTRLLUT,
    2, 0x21, 8,
    &ant_sw_ctrl_tbl_rev8_2057v7_core1[0]);
   wlc_phy_table_write_nphy(
    pi, NPHY_TBL_ID_ANTSWCTRLLUT,
    2, 0x25, 8,
    &ant_sw_ctrl_tbl_rev8_2057v7_core1[2]);
   wlc_phy_table_write_nphy(
    pi, NPHY_TBL_ID_ANTSWCTRLLUT,
    2, 0x29, 8,
    &ant_sw_ctrl_tbl_rev8_2057v7_core1[4]);
   break;

  default:
   break;
  }

 } else if (NREV_GE(pi->pubpi.phy_rev, 3)) {
  for (idx = 0; idx < mimophytbl_info_sz_rev3_volatile; idx++) {

   if (idx == ANT_SWCTRL_TBL_REV3_IDX) {
    antswctrllut =
     CHSPEC_IS2G(pi->radio_chanspec) ?
     pi->srom_fem2g.antswctrllut :
     pi->srom_fem5g.antswctrllut;
    switch (antswctrllut) {
    case 0:
     wlc_phy_write_table_nphy(
      pi,
      &mimophytbl_info_rev3_volatile
      [idx]);
     break;
    case 1:
     wlc_phy_write_table_nphy(
      pi,
      &mimophytbl_info_rev3_volatile1
      [idx]);
     break;
    case 2:
     wlc_phy_write_table_nphy(
      pi,
      &mimophytbl_info_rev3_volatile2
      [idx]);
     break;
    case 3:
     wlc_phy_write_table_nphy(
      pi,
      &mimophytbl_info_rev3_volatile3
      [idx]);
     break;
    default:
     break;
    }
   } else {
    wlc_phy_write_table_nphy(
     pi,
     &mimophytbl_info_rev3_volatile[idx]);
   }
  }
 } else {
  for (idx = 0; idx < mimophytbl_info_sz_rev0_volatile; idx++)
   wlc_phy_write_table_nphy(pi,
       &mimophytbl_info_rev0_volatile
       [idx]);
 }
}
