
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max2175 {int rom_bbf_bw_fm; int rom_bbf_bw_dab; int rom_bbf_bw_am; } ;


 scalar_t__ MAX2175_IS_BAND_AM (struct max2175*) ;
 scalar_t__ MAX2175_IS_DAB_MODE (struct max2175*) ;
 int max2175_write_bits (struct max2175*,int,int,int ,int ) ;
 int mxm_dbg (struct max2175*,char*,int ) ;

__attribute__((used)) static void max2175_set_bbfilter(struct max2175 *ctx)
{
 if (MAX2175_IS_BAND_AM(ctx)) {
  max2175_write_bits(ctx, 12, 3, 0, ctx->rom_bbf_bw_am);
  mxm_dbg(ctx, "set_bbfilter AM: rom %d\n", ctx->rom_bbf_bw_am);
 } else if (MAX2175_IS_DAB_MODE(ctx)) {
  max2175_write_bits(ctx, 12, 3, 0, ctx->rom_bbf_bw_dab);
  mxm_dbg(ctx, "set_bbfilter DAB: rom %d\n", ctx->rom_bbf_bw_dab);
 } else {
  max2175_write_bits(ctx, 12, 3, 0, ctx->rom_bbf_bw_fm);
  mxm_dbg(ctx, "set_bbfilter FM: rom %d\n", ctx->rom_bbf_bw_fm);
 }
}
