
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct max2175 {scalar_t__ xtal_freq; int master; } ;


 int MAX2175_CH_MSEL ;
 int MAX2175_EQ_MSEL ;
 scalar_t__ MAX2175_EU_XTAL_FREQ ;
 int ch_coeff_fmeu ;
 int ch_coeff_fmna ;
 int eq_coeff_fmeu1_ra02_m6db ;
 int eq_coeff_fmna1_ra02_m6db ;
 int max2175_init_power_manager (struct max2175*) ;
 int max2175_load_adc_presets (struct max2175*) ;
 int max2175_load_from_rom (struct max2175*) ;
 int max2175_load_full_fm_eu_1p0 (struct max2175*) ;
 int max2175_load_full_fm_na_1p0 (struct max2175*) ;
 int max2175_recalibrate_adc (struct max2175*) ;
 int max2175_set_filter_coeffs (struct max2175*,int ,int ,int ) ;
 int max2175_write_bit (struct max2175*,int,int,int) ;
 int max2175_write_bits (struct max2175*,int,int,int,int ) ;
 int mxm_dbg (struct max2175*,char*,...) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int max2175_core_init(struct max2175 *ctx, u32 refout_bits)
{
 int ret;


 if (ctx->xtal_freq == MAX2175_EU_XTAL_FREQ)
  max2175_load_full_fm_eu_1p0(ctx);
 else
  max2175_load_full_fm_na_1p0(ctx);


 if (!ctx->master)
  max2175_write_bit(ctx, 30, 7, 1);

 mxm_dbg(ctx, "refout_bits %u\n", refout_bits);


 max2175_write_bits(ctx, 56, 7, 5, refout_bits);


 max2175_write_bit(ctx, 99, 1, 0);
 usleep_range(1000, 1500);
 max2175_write_bit(ctx, 99, 1, 1);


 max2175_load_adc_presets(ctx);


 ret = max2175_init_power_manager(ctx);
 if (ret)
  return ret;


 ret = max2175_recalibrate_adc(ctx);
 if (ret)
  return ret;


 max2175_load_from_rom(ctx);

 if (ctx->xtal_freq == MAX2175_EU_XTAL_FREQ) {

  max2175_set_filter_coeffs(ctx, MAX2175_CH_MSEL, 0,
       ch_coeff_fmeu);
  max2175_set_filter_coeffs(ctx, MAX2175_EQ_MSEL, 0,
       eq_coeff_fmeu1_ra02_m6db);
 } else {

  max2175_set_filter_coeffs(ctx, MAX2175_CH_MSEL, 0,
       ch_coeff_fmna);
  max2175_set_filter_coeffs(ctx, MAX2175_EQ_MSEL, 0,
       eq_coeff_fmna1_ra02_m6db);
 }
 mxm_dbg(ctx, "core initialized\n");

 return 0;
}
