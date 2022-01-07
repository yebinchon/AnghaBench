
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct max2175 {int freq; } ;


 int MAX2175_BUFFER_PLUS_PRESET_TUNE ;
 int max2175_csm_action (struct max2175*,int ) ;
 int max2175_set_rf_freq (struct max2175*,int ,int ) ;
 int mxm_dbg (struct max2175*,char*,int ,int ) ;

__attribute__((used)) static int max2175_tune_rf_freq(struct max2175 *ctx, u64 freq, u32 hsls)
{
 int ret;

 ret = max2175_set_rf_freq(ctx, freq, hsls);
 if (ret)
  return ret;

 ret = max2175_csm_action(ctx, MAX2175_BUFFER_PLUS_PRESET_TUNE);
 if (ret)
  return ret;

 mxm_dbg(ctx, "tune_rf_freq: old %u new %llu\n", ctx->freq, freq);
 ctx->freq = freq;

 return ret;
}
