
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef scalar_t__ u8 ;
struct brcms_c_rateset {int dummy; } ;


 scalar_t__ BRCMS_20_MHZ ;
 int BRCMS_RATES_CCK ;
 int BRCMS_RATES_CCK_OFDM ;
 int BRCM_BAND_5G ;
 scalar_t__ PHYTYPE_IS (int ,int ) ;
 int PHY_TYPE_A ;
 int PHY_TYPE_G ;
 int PHY_TYPE_HT ;
 int PHY_TYPE_LCN ;
 int PHY_TYPE_LP ;
 int PHY_TYPE_N ;
 int PHY_TYPE_SSN ;
 int brcms_c_rate_hwrs_filter_sort_validate (struct brcms_c_rateset*,struct brcms_c_rateset const*,int,scalar_t__) ;
 int brcms_c_rateset_copy (struct brcms_c_rateset const*,struct brcms_c_rateset*) ;
 int brcms_c_rateset_filter (struct brcms_c_rateset*,struct brcms_c_rateset*,int,int ,int ,int) ;
 int brcms_c_rateset_mcs_upd (struct brcms_c_rateset*,scalar_t__) ;
 struct brcms_c_rateset cck_ofdm_40bw_mimo_rates ;
 struct brcms_c_rateset cck_ofdm_mimo_rates ;
 struct brcms_c_rateset cck_ofdm_rates ;
 struct brcms_c_rateset cck_rates ;
 struct brcms_c_rateset ofdm_40bw_mimo_rates ;
 struct brcms_c_rateset ofdm_mimo_rates ;
 struct brcms_c_rateset ofdm_rates ;

void
brcms_c_rateset_default(struct brcms_c_rateset *rs_tgt,
   const struct brcms_c_rateset *rs_hw,
   uint phy_type, int bandtype, bool cck_only,
   uint rate_mask, bool mcsallow, u8 bw, u8 txstreams)
{
 const struct brcms_c_rateset *rs_dflt;
 struct brcms_c_rateset rs_sel;
 if ((PHYTYPE_IS(phy_type, PHY_TYPE_HT)) ||
     (PHYTYPE_IS(phy_type, PHY_TYPE_N)) ||
     (PHYTYPE_IS(phy_type, PHY_TYPE_LCN)) ||
     (PHYTYPE_IS(phy_type, PHY_TYPE_SSN))) {
  if (bandtype == BRCM_BAND_5G)
   rs_dflt = (bw == BRCMS_20_MHZ ?
       &ofdm_mimo_rates : &ofdm_40bw_mimo_rates);
  else
   rs_dflt = (bw == BRCMS_20_MHZ ?
       &cck_ofdm_mimo_rates :
       &cck_ofdm_40bw_mimo_rates);
 } else if (PHYTYPE_IS(phy_type, PHY_TYPE_LP)) {
  rs_dflt = (bandtype == BRCM_BAND_5G) ?
     &ofdm_rates : &cck_ofdm_rates;
 } else if (PHYTYPE_IS(phy_type, PHY_TYPE_A)) {
  rs_dflt = &ofdm_rates;
 } else if (PHYTYPE_IS(phy_type, PHY_TYPE_G)) {
  rs_dflt = &cck_ofdm_rates;
 } else {

  rs_dflt = &cck_rates;
 }


 if (!rs_hw)
  rs_hw = rs_dflt;

 brcms_c_rateset_copy(rs_dflt, &rs_sel);
 brcms_c_rateset_mcs_upd(&rs_sel, txstreams);
 brcms_c_rateset_filter(&rs_sel, rs_tgt, 0,
      cck_only ? BRCMS_RATES_CCK : BRCMS_RATES_CCK_OFDM,
      rate_mask, mcsallow);
 brcms_c_rate_hwrs_filter_sort_validate(rs_tgt, rs_hw, 0,
        mcsallow ? txstreams : 1);
}
