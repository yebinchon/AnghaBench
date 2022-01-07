
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 scalar_t__ NREV_GE (int ,int) ;
 int * mimophytbl_info_rev0 ;
 int * mimophytbl_info_rev16 ;
 int * mimophytbl_info_rev3 ;
 int * mimophytbl_info_rev7 ;
 size_t mimophytbl_info_sz_rev0 ;
 size_t mimophytbl_info_sz_rev16 ;
 size_t mimophytbl_info_sz_rev3 ;
 size_t mimophytbl_info_sz_rev7 ;
 int wlc_phy_write_table_nphy (struct brcms_phy*,int *) ;

__attribute__((used)) static void
wlc_phy_static_table_download_nphy(struct brcms_phy *pi)
{
 uint idx;

 if (NREV_GE(pi->pubpi.phy_rev, 16)) {
  for (idx = 0; idx < mimophytbl_info_sz_rev16; idx++)
   wlc_phy_write_table_nphy(pi,
       &mimophytbl_info_rev16[idx]);
 } else if (NREV_GE(pi->pubpi.phy_rev, 7)) {
  for (idx = 0; idx < mimophytbl_info_sz_rev7; idx++)
   wlc_phy_write_table_nphy(pi,
       &mimophytbl_info_rev7[idx]);
 } else if (NREV_GE(pi->pubpi.phy_rev, 3)) {
  for (idx = 0; idx < mimophytbl_info_sz_rev3; idx++)
   wlc_phy_write_table_nphy(pi,
       &mimophytbl_info_rev3[idx]);
 } else {
  for (idx = 0; idx < mimophytbl_info_sz_rev0; idx++)
   wlc_phy_write_table_nphy(pi,
       &mimophytbl_info_rev0[idx]);
 }
}
