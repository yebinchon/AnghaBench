
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;
struct b43_nphy_chantabent_rev7_2g {int radio_lna2g_tune_core1; int radio_pad2g_tune_pus_core1; int radio_txmix2g_tune_boost_pu_core1; int radio_lna2g_tune_core0; int radio_pad2g_tune_pus_core0; int radio_txmix2g_tune_boost_pu_core0; int radio_logen_indbuf2g_tune; int radio_logen_mx2g_tune; int radio_vcobuf_tune; int radio_rfpll_mmd1; int radio_rfpll_mmd0; int radio_cp_kpd_idac; int radio_rfpll_loopfilter_c1; int radio_rfpll_loopfilter_c2; int radio_rfpll_loopfilter_r1; int radio_rfpll_refmaster_sparextalsize; int radio_vcocal_countval1; int radio_vcocal_countval0; } ;
struct b43_nphy_chantabent_rev7 {int radio_lna5g_tune_core1; int radio_lna2g_tune_core1; int radio_pad5g_tune_misc_pus_core1; int radio_txmix5g_boost_tune_core1; int radio_pga_boost_tune_core1; int radio_pad2g_tune_pus_core1; int radio_txmix2g_tune_boost_pu_core1; int radio_lna5g_tune_core0; int radio_lna2g_tune_core0; int radio_pad5g_tune_misc_pus_core0; int radio_txmix5g_boost_tune_core0; int radio_pga_boost_tune_core0; int radio_pad2g_tune_pus_core0; int radio_txmix2g_tune_boost_pu_core0; int radio_logen_indbuf5g_tune; int radio_logen_indbuf2g_tune; int radio_logen_mx5g_tune; int radio_logen_mx2g_tune; int radio_vcobuf_tune; int radio_rfpll_mmd1; int radio_rfpll_mmd0; int radio_cp_kpd_idac; int radio_rfpll_loopfilter_c1; int radio_rfpll_loopfilter_c2; int radio_rfpll_loopfilter_r1; int radio_rfpll_refmaster_sparextalsize; int radio_vcocal_countval1; int radio_vcocal_countval0; } ;


 int R2057_CP_KPD_IDAC ;
 int R2057_LNA2G_TUNE_CORE0 ;
 int R2057_LNA2G_TUNE_CORE1 ;
 int R2057_LNA5G_TUNE_CORE0 ;
 int R2057_LNA5G_TUNE_CORE1 ;
 int R2057_LOGEN_INDBUF2G_TUNE ;
 int R2057_LOGEN_INDBUF5G_TUNE ;
 int R2057_LOGEN_MX2G_TUNE ;
 int R2057_LOGEN_MX5G_TUNE ;
 int R2057_PAD2G_TUNE_PUS_CORE0 ;
 int R2057_PAD2G_TUNE_PUS_CORE1 ;
 int R2057_PAD5G_TUNE_MISC_PUS_CORE0 ;
 int R2057_PAD5G_TUNE_MISC_PUS_CORE1 ;
 int R2057_PGA_BOOST_TUNE_CORE0 ;
 int R2057_PGA_BOOST_TUNE_CORE1 ;
 int R2057_RFPLL_LOOPFILTER_C1 ;
 int R2057_RFPLL_LOOPFILTER_C2 ;
 int R2057_RFPLL_LOOPFILTER_R1 ;
 int R2057_RFPLL_MMD0 ;
 int R2057_RFPLL_MMD1 ;
 int R2057_RFPLL_REFMASTER_SPAREXTALSIZE ;
 int R2057_TXMIX2G_TUNE_BOOST_PU_CORE0 ;
 int R2057_TXMIX2G_TUNE_BOOST_PU_CORE1 ;
 int R2057_TXMIX5G_BOOST_TUNE_CORE0 ;
 int R2057_TXMIX5G_BOOST_TUNE_CORE1 ;
 int R2057_VCOBUF_TUNE ;
 int R2057_VCOCAL_COUNTVAL0 ;
 int R2057_VCOCAL_COUNTVAL1 ;
 int b43_radio_write (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_radio_2057_chantab_upload(struct b43_wldev *dev,
       const struct b43_nphy_chantabent_rev7 *e_r7,
       const struct b43_nphy_chantabent_rev7_2g *e_r7_2g)
{
 if (e_r7_2g) {
  b43_radio_write(dev, R2057_VCOCAL_COUNTVAL0, e_r7_2g->radio_vcocal_countval0);
  b43_radio_write(dev, R2057_VCOCAL_COUNTVAL1, e_r7_2g->radio_vcocal_countval1);
  b43_radio_write(dev, R2057_RFPLL_REFMASTER_SPAREXTALSIZE, e_r7_2g->radio_rfpll_refmaster_sparextalsize);
  b43_radio_write(dev, R2057_RFPLL_LOOPFILTER_R1, e_r7_2g->radio_rfpll_loopfilter_r1);
  b43_radio_write(dev, R2057_RFPLL_LOOPFILTER_C2, e_r7_2g->radio_rfpll_loopfilter_c2);
  b43_radio_write(dev, R2057_RFPLL_LOOPFILTER_C1, e_r7_2g->radio_rfpll_loopfilter_c1);
  b43_radio_write(dev, R2057_CP_KPD_IDAC, e_r7_2g->radio_cp_kpd_idac);
  b43_radio_write(dev, R2057_RFPLL_MMD0, e_r7_2g->radio_rfpll_mmd0);
  b43_radio_write(dev, R2057_RFPLL_MMD1, e_r7_2g->radio_rfpll_mmd1);
  b43_radio_write(dev, R2057_VCOBUF_TUNE, e_r7_2g->radio_vcobuf_tune);
  b43_radio_write(dev, R2057_LOGEN_MX2G_TUNE, e_r7_2g->radio_logen_mx2g_tune);
  b43_radio_write(dev, R2057_LOGEN_INDBUF2G_TUNE, e_r7_2g->radio_logen_indbuf2g_tune);
  b43_radio_write(dev, R2057_TXMIX2G_TUNE_BOOST_PU_CORE0, e_r7_2g->radio_txmix2g_tune_boost_pu_core0);
  b43_radio_write(dev, R2057_PAD2G_TUNE_PUS_CORE0, e_r7_2g->radio_pad2g_tune_pus_core0);
  b43_radio_write(dev, R2057_LNA2G_TUNE_CORE0, e_r7_2g->radio_lna2g_tune_core0);
  b43_radio_write(dev, R2057_TXMIX2G_TUNE_BOOST_PU_CORE1, e_r7_2g->radio_txmix2g_tune_boost_pu_core1);
  b43_radio_write(dev, R2057_PAD2G_TUNE_PUS_CORE1, e_r7_2g->radio_pad2g_tune_pus_core1);
  b43_radio_write(dev, R2057_LNA2G_TUNE_CORE1, e_r7_2g->radio_lna2g_tune_core1);

 } else {
  b43_radio_write(dev, R2057_VCOCAL_COUNTVAL0, e_r7->radio_vcocal_countval0);
  b43_radio_write(dev, R2057_VCOCAL_COUNTVAL1, e_r7->radio_vcocal_countval1);
  b43_radio_write(dev, R2057_RFPLL_REFMASTER_SPAREXTALSIZE, e_r7->radio_rfpll_refmaster_sparextalsize);
  b43_radio_write(dev, R2057_RFPLL_LOOPFILTER_R1, e_r7->radio_rfpll_loopfilter_r1);
  b43_radio_write(dev, R2057_RFPLL_LOOPFILTER_C2, e_r7->radio_rfpll_loopfilter_c2);
  b43_radio_write(dev, R2057_RFPLL_LOOPFILTER_C1, e_r7->radio_rfpll_loopfilter_c1);
  b43_radio_write(dev, R2057_CP_KPD_IDAC, e_r7->radio_cp_kpd_idac);
  b43_radio_write(dev, R2057_RFPLL_MMD0, e_r7->radio_rfpll_mmd0);
  b43_radio_write(dev, R2057_RFPLL_MMD1, e_r7->radio_rfpll_mmd1);
  b43_radio_write(dev, R2057_VCOBUF_TUNE, e_r7->radio_vcobuf_tune);
  b43_radio_write(dev, R2057_LOGEN_MX2G_TUNE, e_r7->radio_logen_mx2g_tune);
  b43_radio_write(dev, R2057_LOGEN_MX5G_TUNE, e_r7->radio_logen_mx5g_tune);
  b43_radio_write(dev, R2057_LOGEN_INDBUF2G_TUNE, e_r7->radio_logen_indbuf2g_tune);
  b43_radio_write(dev, R2057_LOGEN_INDBUF5G_TUNE, e_r7->radio_logen_indbuf5g_tune);
  b43_radio_write(dev, R2057_TXMIX2G_TUNE_BOOST_PU_CORE0, e_r7->radio_txmix2g_tune_boost_pu_core0);
  b43_radio_write(dev, R2057_PAD2G_TUNE_PUS_CORE0, e_r7->radio_pad2g_tune_pus_core0);
  b43_radio_write(dev, R2057_PGA_BOOST_TUNE_CORE0, e_r7->radio_pga_boost_tune_core0);
  b43_radio_write(dev, R2057_TXMIX5G_BOOST_TUNE_CORE0, e_r7->radio_txmix5g_boost_tune_core0);
  b43_radio_write(dev, R2057_PAD5G_TUNE_MISC_PUS_CORE0, e_r7->radio_pad5g_tune_misc_pus_core0);
  b43_radio_write(dev, R2057_LNA2G_TUNE_CORE0, e_r7->radio_lna2g_tune_core0);
  b43_radio_write(dev, R2057_LNA5G_TUNE_CORE0, e_r7->radio_lna5g_tune_core0);
  b43_radio_write(dev, R2057_TXMIX2G_TUNE_BOOST_PU_CORE1, e_r7->radio_txmix2g_tune_boost_pu_core1);
  b43_radio_write(dev, R2057_PAD2G_TUNE_PUS_CORE1, e_r7->radio_pad2g_tune_pus_core1);
  b43_radio_write(dev, R2057_PGA_BOOST_TUNE_CORE1, e_r7->radio_pga_boost_tune_core1);
  b43_radio_write(dev, R2057_TXMIX5G_BOOST_TUNE_CORE1, e_r7->radio_txmix5g_boost_tune_core1);
  b43_radio_write(dev, R2057_PAD5G_TUNE_MISC_PUS_CORE1, e_r7->radio_pad5g_tune_misc_pus_core1);
  b43_radio_write(dev, R2057_LNA2G_TUNE_CORE1, e_r7->radio_lna2g_tune_core1);
  b43_radio_write(dev, R2057_LNA5G_TUNE_CORE1, e_r7->radio_lna5g_tune_core1);
 }
}
