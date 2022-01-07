
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phytbl_info {int dummy; } ;
struct brcms_phy {int dummy; } ;


 int wlc_phy_read_table (struct brcms_phy*,struct phytbl_info*,int,int,int) ;

void wlc_lcnphy_read_table(struct brcms_phy *pi, struct phytbl_info *pti)
{
 wlc_phy_read_table(pi, pti, 0x455, 0x457, 0x456);
}
