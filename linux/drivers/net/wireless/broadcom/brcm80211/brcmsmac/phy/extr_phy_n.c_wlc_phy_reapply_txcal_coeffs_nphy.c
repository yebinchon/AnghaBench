
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct brcms_phy {scalar_t__ nphy_txiqlocal_chanspec; scalar_t__ radio_chanspec; scalar_t__* nphy_txiqlocal_bestc; scalar_t__ nphy_txiqlocal_coeffsvalid; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int NPHY_TBL_ID_IQLOCAL ;
 int wlc_phy_table_read_nphy (struct brcms_phy*,int ,int ,int,int,scalar_t__*) ;
 int wlc_phy_table_write_nphy (struct brcms_phy*,int ,int,int,int,scalar_t__*) ;

__attribute__((used)) static void wlc_phy_reapply_txcal_coeffs_nphy(struct brcms_phy *pi)
{
 u16 tbl_buf[7];

 if ((pi->nphy_txiqlocal_chanspec == pi->radio_chanspec) &&
     (pi->nphy_txiqlocal_coeffsvalid)) {
  wlc_phy_table_read_nphy(pi, NPHY_TBL_ID_IQLOCAL,
     ARRAY_SIZE(tbl_buf), 80, 16, tbl_buf);

  if ((pi->nphy_txiqlocal_bestc[0] != tbl_buf[0]) ||
      (pi->nphy_txiqlocal_bestc[1] != tbl_buf[1]) ||
      (pi->nphy_txiqlocal_bestc[2] != tbl_buf[2]) ||
      (pi->nphy_txiqlocal_bestc[3] != tbl_buf[3])) {

   wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_IQLOCAL, 4, 80,
       16, pi->nphy_txiqlocal_bestc);

   tbl_buf[0] = 0;
   tbl_buf[1] = 0;
   tbl_buf[2] = 0;
   tbl_buf[3] = 0;
   wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_IQLOCAL, 4, 88,
       16, tbl_buf);

   wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_IQLOCAL, 2, 85,
       16,
       &pi->nphy_txiqlocal_bestc[5]);

   wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_IQLOCAL, 2, 93,
       16,
       &pi->nphy_txiqlocal_bestc[5]);
  }
 }
}
