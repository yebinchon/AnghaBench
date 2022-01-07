
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
typedef size_t u32 ;
typedef int u16 ;
struct brcms_c_info {TYPE_1__* hw; int band; } ;
typedef int s16 ;
struct TYPE_4__ {int tx_phy_ctl3; } ;
struct TYPE_3__ {int d11core; } ;


 scalar_t__ BRCMS_ISLCNPHY (int ) ;
 int BRCMS_ISSSLPNPHY (int ) ;
 int PHY_TXC1_BW_20MHZ ;
 int PHY_TXC1_MODE_SHIFT ;
 size_t RSPEC_RATE_MASK ;
 int brcms_c_rate_legacy_phyctl (int ) ;
 int brcms_err (int ,char*,...) ;
 scalar_t__ is_cck_rate (size_t) ;
 scalar_t__ is_mcs_rate (size_t) ;
 TYPE_2__* mcs_table ;
 int rspec2rate (size_t) ;
 int rspec_get_bw (size_t) ;
 int rspec_phytxbyte2 (size_t) ;
 int rspec_stf (size_t) ;

__attribute__((used)) static u16 brcms_c_phytxctl1_calc(struct brcms_c_info *wlc, u32 rspec)
{
 u16 phyctl1 = 0;
 u16 bw;

 if (BRCMS_ISLCNPHY(wlc->band)) {
  bw = PHY_TXC1_BW_20MHZ;
 } else {
  bw = rspec_get_bw(rspec);

  if (bw < PHY_TXC1_BW_20MHZ) {
   brcms_err(wlc->hw->d11core, "phytxctl1_calc: bw %d is "
      "not supported yet, set to 20L\n", bw);
   bw = PHY_TXC1_BW_20MHZ;
  }
 }

 if (is_mcs_rate(rspec)) {
  uint mcs = rspec & RSPEC_RATE_MASK;


  phyctl1 = rspec_phytxbyte2(rspec);

  phyctl1 |= (mcs_table[mcs].tx_phy_ctl3 << 8);
 } else if (is_cck_rate(rspec) && !BRCMS_ISLCNPHY(wlc->band)
     && !BRCMS_ISSSLPNPHY(wlc->band)) {






  phyctl1 = (bw | (rspec_stf(rspec) << PHY_TXC1_MODE_SHIFT));
 } else {
  s16 phycfg;

  phycfg = brcms_c_rate_legacy_phyctl(rspec2rate(rspec));
  if (phycfg == -1) {
   brcms_err(wlc->hw->d11core, "phytxctl1_calc: wrong "
      "legacy OFDM/CCK rate\n");
   phycfg = 0;
  }

  phyctl1 =
      (bw | (phycfg << 8) |
       (rspec_stf(rspec) << PHY_TXC1_MODE_SHIFT));
 }
 return phyctl1;
}
