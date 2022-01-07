
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct max2175 {TYPE_2__* hsls; TYPE_3__* rx_modes; int freq; } ;
struct TYPE_6__ {int freq; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_5__ {TYPE_1__ cur; } ;


 scalar_t__ max2175_freq_rx_mode_valid (struct max2175*,size_t,int ) ;
 int max2175_set_rx_mode (struct max2175*,size_t) ;
 int max2175_tune_rf_freq (struct max2175*,int ,int ) ;
 int mxm_dbg (struct max2175*,char*,size_t,int ) ;

__attribute__((used)) static void max2175_s_ctrl_rx_mode(struct max2175 *ctx, u32 rx_mode)
{

 max2175_set_rx_mode(ctx, rx_mode);

 mxm_dbg(ctx, "s_ctrl_rx_mode: %u curr freq %u\n", rx_mode, ctx->freq);


 if (max2175_freq_rx_mode_valid(ctx, rx_mode, ctx->freq))
  max2175_tune_rf_freq(ctx, ctx->freq, ctx->hsls->cur.val);
 else

  max2175_tune_rf_freq(ctx, ctx->rx_modes[rx_mode].freq,
         ctx->hsls->cur.val);
}
