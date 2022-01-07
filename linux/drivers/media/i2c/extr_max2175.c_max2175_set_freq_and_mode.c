
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct max2175 {TYPE_4__* hsls; TYPE_2__* rx_mode; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_8__ {TYPE_3__ cur; } ;
struct TYPE_5__ {int val; } ;
struct TYPE_6__ {TYPE_1__ cur; } ;


 int max2175_rx_mode_from_freq (struct max2175*,int ,int *) ;
 int max2175_set_rx_mode (struct max2175*,int ) ;
 int max2175_tune_rf_freq (struct max2175*,int ,int ) ;
 int mxm_dbg (struct max2175*,char*,int ,int ) ;

__attribute__((used)) static int max2175_set_freq_and_mode(struct max2175 *ctx, u32 freq)
{
 u32 rx_mode;
 int ret;


 ret = max2175_rx_mode_from_freq(ctx, freq, &rx_mode);
 if (ret)
  return ret;

 mxm_dbg(ctx, "set_freq_and_mode: freq %u rx_mode %d\n", freq, rx_mode);


 max2175_set_rx_mode(ctx, rx_mode);
 ctx->rx_mode->cur.val = rx_mode;


 return max2175_tune_rf_freq(ctx, freq, ctx->hsls->cur.val);
}
