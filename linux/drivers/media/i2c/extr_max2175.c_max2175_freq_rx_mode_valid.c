
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct max2175 {TYPE_1__* rx_modes; } ;
struct TYPE_2__ {int band; } ;


 int max2175_band_from_freq (size_t) ;

__attribute__((used)) static bool max2175_freq_rx_mode_valid(struct max2175 *ctx,
      u32 mode, u32 freq)
{
 int band = max2175_band_from_freq(freq);

 return (ctx->rx_modes[mode].band == band);
}
