
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef void* u16 ;
struct lcnphy_iq_est {scalar_t__ i_pwr; scalar_t__ q_pwr; scalar_t__ iq_prod; int member_2; int member_1; int member_0; } ;
struct TYPE_4__ {void* rxiqcal_coeff_b0; void* rxiqcal_coeff_a0; } ;
struct brcms_phy_lcnphy {TYPE_2__ lcnphy_cal_results; } ;
struct TYPE_3__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;
typedef int s32 ;
typedef int s16 ;


 scalar_t__ LCNPHY_MIN_RXIQ_PWR ;
 scalar_t__ int_sqrt (unsigned long) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int) ;
 int read_phy_reg (struct brcms_phy*,int) ;
 int wlc_lcnphy_rx_iq_est (struct brcms_phy*,void*,int,struct lcnphy_iq_est*) ;
 int wlc_lcnphy_set_rx_iq_comp (struct brcms_phy*,void*,void*) ;
 int wlc_phy_nbits (scalar_t__) ;

__attribute__((used)) static bool wlc_lcnphy_calc_rx_iq_comp(struct brcms_phy *pi, u16 num_samps)
{

 bool result;
 u16 a0_new, b0_new;
 struct lcnphy_iq_est iq_est = { 0, 0, 0 };
 s32 a, b, temp;
 s16 iq_nbits, qq_nbits, arsh, brsh;
 s32 iq;
 u32 ii, qq;
 struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

 a0_new = ((read_phy_reg(pi, 0x645) & (0x3ff << 0)) >> 0);
 b0_new = ((read_phy_reg(pi, 0x646) & (0x3ff << 0)) >> 0);
 mod_phy_reg(pi, 0x6d1, (0x1 << 2), (0) << 2);

 mod_phy_reg(pi, 0x64b, (0x1 << 6), (1) << 6);

 wlc_lcnphy_set_rx_iq_comp(pi, 0, 0);

 result = wlc_lcnphy_rx_iq_est(pi, num_samps, 32, &iq_est);
 if (!result)
  goto cleanup;

 iq = (s32) iq_est.iq_prod;
 ii = iq_est.i_pwr;
 qq = iq_est.q_pwr;

 if ((ii + qq) < 2) {
  result = 0;
  goto cleanup;
 }

 iq_nbits = wlc_phy_nbits(iq);
 qq_nbits = wlc_phy_nbits(qq);

 arsh = 10 - (30 - iq_nbits);
 if (arsh >= 0) {
  a = (-(iq << (30 - iq_nbits)) + (ii >> (1 + arsh)));
  temp = (s32) (ii >> arsh);
  if (temp == 0)
   return 0;
 } else {
  a = (-(iq << (30 - iq_nbits)) + (ii << (-1 - arsh)));
  temp = (s32) (ii << -arsh);
  if (temp == 0)
   return 0;
 }
 a /= temp;
 brsh = qq_nbits - 31 + 20;
 if (brsh >= 0) {
  b = (qq << (31 - qq_nbits));
  temp = (s32) (ii >> brsh);
  if (temp == 0)
   return 0;
 } else {
  b = (qq << (31 - qq_nbits));
  temp = (s32) (ii << -brsh);
  if (temp == 0)
   return 0;
 }
 b /= temp;
 b -= a * a;
 b = (s32) int_sqrt((unsigned long) b);
 b -= (1 << 10);
 a0_new = (u16) (a & 0x3ff);
 b0_new = (u16) (b & 0x3ff);
cleanup:

 wlc_lcnphy_set_rx_iq_comp(pi, a0_new, b0_new);

 mod_phy_reg(pi, 0x64b, (0x1 << 0), (1) << 0);

 mod_phy_reg(pi, 0x64b, (0x1 << 3), (1) << 3);

 pi_lcn->lcnphy_cal_results.rxiqcal_coeff_a0 = a0_new;
 pi_lcn->lcnphy_cal_results.rxiqcal_coeff_b0 = b0_new;

 return result;
}
