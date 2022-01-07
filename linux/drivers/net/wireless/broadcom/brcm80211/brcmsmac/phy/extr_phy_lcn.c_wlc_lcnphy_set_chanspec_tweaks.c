
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct brcms_phy_lcnphy {int lcnphy_bandedge_corr; int lcnphy_spurmod; } ;
struct TYPE_4__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_3__* d11core; TYPE_1__ u; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_5__ {int drv_cc; } ;


 int BCMA_CC_PMU_CTL ;
 int BCMA_CC_PMU_CTL_PLL_UPD ;
 int CHSPEC_CHANNEL (int ) ;
 int bcma_cc_set32 (int *,int ,int ) ;
 int bcma_chipco_pll_maskset (int *,int,int,int) ;
 int bcma_chipco_pll_write (int *,int,int) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int or_phy_reg (struct brcms_phy*,int,int) ;
 int wlc_lcnphy_txrx_spur_avoidance_mode (struct brcms_phy*,int) ;
 int write_phy_reg (struct brcms_phy*,int,int) ;

__attribute__((used)) static void
wlc_lcnphy_set_chanspec_tweaks(struct brcms_phy *pi, u16 chanspec)
{
 u8 channel = CHSPEC_CHANNEL(chanspec);
 struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

 if (channel == 14)
  mod_phy_reg(pi, 0x448, (0x3 << 8), (2) << 8);
 else
  mod_phy_reg(pi, 0x448, (0x3 << 8), (1) << 8);

 pi_lcn->lcnphy_bandedge_corr = 2;
 if (channel == 1)
  pi_lcn->lcnphy_bandedge_corr = 4;

 if (channel == 1 || channel == 2 || channel == 3 ||
     channel == 4 || channel == 9 ||
     channel == 10 || channel == 11 || channel == 12) {
  bcma_chipco_pll_write(&pi->d11core->bus->drv_cc, 0x2,
          0x03000c04);
  bcma_chipco_pll_maskset(&pi->d11core->bus->drv_cc, 0x3,
     ~0x00ffffff, 0x0);
  bcma_chipco_pll_write(&pi->d11core->bus->drv_cc, 0x4,
          0x200005c0);

  bcma_cc_set32(&pi->d11core->bus->drv_cc, BCMA_CC_PMU_CTL,
         BCMA_CC_PMU_CTL_PLL_UPD);
  write_phy_reg(pi, 0x942, 0);
  wlc_lcnphy_txrx_spur_avoidance_mode(pi, 0);
  pi_lcn->lcnphy_spurmod = 0;
  mod_phy_reg(pi, 0x424, (0xff << 8), (0x1b) << 8);

  write_phy_reg(pi, 0x425, 0x5907);
 } else {
  bcma_chipco_pll_write(&pi->d11core->bus->drv_cc, 0x2,
          0x03140c04);
  bcma_chipco_pll_maskset(&pi->d11core->bus->drv_cc, 0x3,
     ~0x00ffffff, 0x333333);
  bcma_chipco_pll_write(&pi->d11core->bus->drv_cc, 0x4,
          0x202c2820);

  bcma_cc_set32(&pi->d11core->bus->drv_cc, BCMA_CC_PMU_CTL,
         BCMA_CC_PMU_CTL_PLL_UPD);
  write_phy_reg(pi, 0x942, 0);
  wlc_lcnphy_txrx_spur_avoidance_mode(pi, 1);

  pi_lcn->lcnphy_spurmod = 0;
  mod_phy_reg(pi, 0x424, (0xff << 8), (0x1f) << 8);

  write_phy_reg(pi, 0x425, 0x590a);
 }

 or_phy_reg(pi, 0x44a, 0x44);
 write_phy_reg(pi, 0x44a, 0x80);
}
