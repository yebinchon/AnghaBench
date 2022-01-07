
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct max2175 {int xtal_freq; } ;
typedef enum max2175_band { ____Placeholder_max2175_band } max2175_band ;




 int MAX2175_BAND_L ;

 int div_u64 (int,int) ;
 int max2175_poll_csm_ready (struct max2175*) ;
 int max2175_read_bits (struct max2175*,int,int,int ) ;
 int max2175_write (struct max2175*,int,int) ;
 int max2175_write_bits (struct max2175*,int,int,int,int) ;
 int mxm_dbg (struct max2175*,char*,int,int,int) ;

__attribute__((used)) static int max2175_set_lo_freq(struct max2175 *ctx, u32 lo_freq)
{
 u8 lo_mult, loband_bits = 0, vcodiv_bits = 0;
 u32 int_desired, frac_desired;
 enum max2175_band band;
 int ret;

 band = max2175_read_bits(ctx, 5, 1, 0);
 switch (band) {
 case 130:
  lo_mult = 16;
  break;
 case 129:
  if (lo_freq <= 74700000) {
   lo_mult = 16;
  } else if (lo_freq > 74700000 && lo_freq <= 110000000) {
   loband_bits = 1;
   lo_mult = 8;
  } else {
   loband_bits = 1;
   vcodiv_bits = 3;
   lo_mult = 8;
  }
  break;
 case 128:
  if (lo_freq <= 210000000)
   vcodiv_bits = 2;
  else
   vcodiv_bits = 1;

  loband_bits = 2;
  lo_mult = 4;
  break;
 default:
  loband_bits = 3;
  vcodiv_bits = 2;
  lo_mult = 2;
  break;
 }

 if (band == MAX2175_BAND_L)
  lo_freq /= lo_mult;
 else
  lo_freq *= lo_mult;

 int_desired = lo_freq / ctx->xtal_freq;
 frac_desired = div_u64((u64)(lo_freq % ctx->xtal_freq) << 20,
          ctx->xtal_freq);


 ret = max2175_poll_csm_ready(ctx);
 if (ret)
  return ret;

 mxm_dbg(ctx, "lo_mult %u int %u  frac %u\n",
  lo_mult, int_desired, frac_desired);


 max2175_write(ctx, 1, int_desired);
 max2175_write_bits(ctx, 2, 3, 0, (frac_desired >> 16) & 0xf);
 max2175_write(ctx, 3, frac_desired >> 8);
 max2175_write(ctx, 4, frac_desired);
 max2175_write_bits(ctx, 5, 3, 2, loband_bits);
 max2175_write_bits(ctx, 6, 7, 6, vcodiv_bits);

 return ret;
}
