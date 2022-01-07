
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int temp_offset ;
struct phytbl_info {int* tbl_ptr; int tbl_len; int tbl_width; scalar_t__ tbl_offset; int tbl_id; } ;
struct brcms_phy {int dummy; } ;


 int LCNPHY_TBL_ID_PAPDCOMPDELTATBL ;
 int memset (int*,int ,int) ;
 int wlc_lcnphy_write_table (struct brcms_phy*,struct phytbl_info*) ;

__attribute__((used)) static void wlc_lcnphy_clear_papd_comptable(struct brcms_phy *pi)
{
 u32 j;
 struct phytbl_info tab;
 u32 temp_offset[128];
 tab.tbl_ptr = temp_offset;
 tab.tbl_len = 128;
 tab.tbl_id = LCNPHY_TBL_ID_PAPDCOMPDELTATBL;
 tab.tbl_width = 32;
 tab.tbl_offset = 0;

 memset(temp_offset, 0, sizeof(temp_offset));
 for (j = 1; j < 128; j += 2)
  temp_offset[j] = 0x80000;

 wlc_lcnphy_write_table(pi, &tab);
 return;
}
