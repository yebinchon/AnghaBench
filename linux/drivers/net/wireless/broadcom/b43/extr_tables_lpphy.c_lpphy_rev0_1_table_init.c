
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int ARRAY_SIZE (int ) ;
 int B43_LPTAB16 (int,int ) ;
 int B43_LPTAB32 (int,int ) ;
 int B43_LPTAB8 (int,int ) ;
 int B43_WARN_ON (int) ;
 int b43_lptab_write_bulk (struct b43_wldev*,int ,int ,int ) ;
 int lpphy_crs_gain_nft_table ;
 int lpphy_gain_delta_table ;
 int lpphy_iqlo_cal_table ;
 int lpphy_min_sig_sq_table ;
 int lpphy_pll_fraction_table ;
 int lpphy_rev01_filter_control_table ;
 int lpphy_rev01_noise_scale_table ;
 int lpphy_rev01_ps_control_table ;
 int lpphy_rev0_ofdm_cck_gain_table ;
 int lpphy_rev1_ofdm_cck_gain_table ;
 int lpphy_tx_power_control_table ;

void lpphy_rev0_1_table_init(struct b43_wldev *dev)
{
 B43_WARN_ON(dev->phy.rev >= 2);

 b43_lptab_write_bulk(dev, B43_LPTAB8(2, 0),
  ARRAY_SIZE(lpphy_min_sig_sq_table), lpphy_min_sig_sq_table);
 b43_lptab_write_bulk(dev, B43_LPTAB16(1, 0),
  ARRAY_SIZE(lpphy_rev01_noise_scale_table), lpphy_rev01_noise_scale_table);
 b43_lptab_write_bulk(dev, B43_LPTAB16(14, 0),
  ARRAY_SIZE(lpphy_crs_gain_nft_table), lpphy_crs_gain_nft_table);
 b43_lptab_write_bulk(dev, B43_LPTAB16(8, 0),
  ARRAY_SIZE(lpphy_rev01_filter_control_table), lpphy_rev01_filter_control_table);
 b43_lptab_write_bulk(dev, B43_LPTAB32(9, 0),
  ARRAY_SIZE(lpphy_rev01_ps_control_table), lpphy_rev01_ps_control_table);
 b43_lptab_write_bulk(dev, B43_LPTAB8(6, 0),
  ARRAY_SIZE(lpphy_pll_fraction_table), lpphy_pll_fraction_table);
 b43_lptab_write_bulk(dev, B43_LPTAB16(0, 0),
  ARRAY_SIZE(lpphy_iqlo_cal_table), lpphy_iqlo_cal_table);
 if (dev->phy.rev == 0) {
  b43_lptab_write_bulk(dev, B43_LPTAB16(13, 0),
   ARRAY_SIZE(lpphy_rev0_ofdm_cck_gain_table), lpphy_rev0_ofdm_cck_gain_table);
  b43_lptab_write_bulk(dev, B43_LPTAB16(12, 0),
   ARRAY_SIZE(lpphy_rev0_ofdm_cck_gain_table), lpphy_rev0_ofdm_cck_gain_table);
 } else {
  b43_lptab_write_bulk(dev, B43_LPTAB16(13, 0),
   ARRAY_SIZE(lpphy_rev1_ofdm_cck_gain_table), lpphy_rev1_ofdm_cck_gain_table);
  b43_lptab_write_bulk(dev, B43_LPTAB16(12, 0),
   ARRAY_SIZE(lpphy_rev1_ofdm_cck_gain_table), lpphy_rev1_ofdm_cck_gain_table);
}
 b43_lptab_write_bulk(dev, B43_LPTAB16(15, 0),
  ARRAY_SIZE(lpphy_gain_delta_table), lpphy_gain_delta_table);
 b43_lptab_write_bulk(dev, B43_LPTAB32(10, 0),
  ARRAY_SIZE(lpphy_tx_power_control_table), lpphy_tx_power_control_table);
}
