
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct max2175 {int decim_ratio; } ;
struct TYPE_3__ {int val; int idx; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int MAX2175_CH_MSEL ;
 int MAX2175_EQ_MSEL ;
 int ch_coeff_fmeu ;
 int eq_coeff_fmeu1_ra02_m6db ;
 TYPE_1__* fmeu1p2_map ;
 int max2175_set_filter_coeffs (struct max2175*,int ,int ,int ) ;
 int max2175_write (struct max2175*,int ,int ) ;

__attribute__((used)) static void max2175_load_fmeu_1p2(struct max2175 *ctx)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(fmeu1p2_map); i++)
  max2175_write(ctx, fmeu1p2_map[i].idx, fmeu1p2_map[i].val);

 ctx->decim_ratio = 36;


 max2175_set_filter_coeffs(ctx, MAX2175_CH_MSEL, 0, ch_coeff_fmeu);
 max2175_set_filter_coeffs(ctx, MAX2175_EQ_MSEL, 0,
      eq_coeff_fmeu1_ra02_m6db);
}
