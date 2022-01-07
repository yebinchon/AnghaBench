
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct max2175 {int decim_ratio; int master; } ;


 int MAX2175_CH_MSEL ;
 int MAX2175_EQ_MSEL ;


 int ch_coeff_fmna ;
 int eq_coeff_fmna1_ra02_m6db ;
 int max2175_load_fmna_1p0 (struct max2175*) ;
 int max2175_load_fmna_2p0 (struct max2175*) ;
 int max2175_set_filter_coeffs (struct max2175*,int ,int ,int ) ;
 int max2175_write_bit (struct max2175*,int,int,int) ;

__attribute__((used)) static void max2175_set_na_rx_mode(struct max2175 *ctx, u32 rx_mode)
{
 switch (rx_mode) {
 case 129:
  max2175_load_fmna_1p0(ctx);
  break;
 case 128:
  max2175_load_fmna_2p0(ctx);
  break;
 }

 if (!ctx->master)
  max2175_write_bit(ctx, 30, 7, 1);

 ctx->decim_ratio = 27;


 max2175_set_filter_coeffs(ctx, MAX2175_CH_MSEL, 0, ch_coeff_fmna);
 max2175_set_filter_coeffs(ctx, MAX2175_EQ_MSEL, 0,
      eq_coeff_fmna1_ra02_m6db);
}
