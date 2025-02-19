
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct max2175 {TYPE_2__* rx_modes; TYPE_1__* rx_mode; } ;
struct TYPE_4__ {int band; } ;
struct TYPE_3__ {unsigned int maximum; } ;


 int EINVAL ;
 int max2175_band_from_freq (unsigned int) ;
 int mxm_dbg (struct max2175*,char*,unsigned int,unsigned int) ;

__attribute__((used)) static int max2175_rx_mode_from_freq(struct max2175 *ctx, u32 freq, u32 *mode)
{
 unsigned int i;
 int band = max2175_band_from_freq(freq);


 for (i = 0; i <= ctx->rx_mode->maximum; i++) {
  if (ctx->rx_modes[i].band == band) {
   *mode = i;
   mxm_dbg(ctx, "rx_mode_from_freq: freq %u mode %d\n",
    freq, *mode);
   return 0;
  }
 }

 return -EINVAL;
}
