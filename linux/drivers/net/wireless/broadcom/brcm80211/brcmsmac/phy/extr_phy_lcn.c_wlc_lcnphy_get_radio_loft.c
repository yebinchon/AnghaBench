
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcms_phy {int dummy; } ;


 int LCNPHY_IQLOCC_READ (int ) ;
 int RADIO_2064_REG089 ;
 int RADIO_2064_REG08A ;
 int RADIO_2064_REG08B ;
 int RADIO_2064_REG08C ;
 int read_radio_reg (struct brcms_phy*,int ) ;

void
wlc_lcnphy_get_radio_loft(struct brcms_phy *pi,
     u8 *ei0, u8 *eq0, u8 *fi0, u8 *fq0)
{
 *ei0 = LCNPHY_IQLOCC_READ(read_radio_reg(pi, RADIO_2064_REG089));
 *eq0 = LCNPHY_IQLOCC_READ(read_radio_reg(pi, RADIO_2064_REG08A));
 *fi0 = LCNPHY_IQLOCC_READ(read_radio_reg(pi, RADIO_2064_REG08B));
 *fq0 = LCNPHY_IQLOCC_READ(read_radio_reg(pi, RADIO_2064_REG08C));
}
