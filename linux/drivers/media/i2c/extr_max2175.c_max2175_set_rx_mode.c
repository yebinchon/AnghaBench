
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct max2175 {scalar_t__ xtal_freq; int mode_resolved; TYPE_4__* i2s_en; TYPE_2__* hsls; scalar_t__ am_hiz; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_8__ {TYPE_3__ cur; } ;
struct TYPE_5__ {int val; } ;
struct TYPE_6__ {TYPE_1__ cur; } ;


 scalar_t__ MAX2175_EU_XTAL_FREQ ;
 int max2175_i2s_enable (struct max2175*,int ) ;
 int max2175_set_bbfilter (struct max2175*) ;
 int max2175_set_eu_rx_mode (struct max2175*,int ) ;
 int max2175_set_hsls (struct max2175*,int ) ;
 int max2175_set_na_rx_mode (struct max2175*,int ) ;
 int max2175_write_bit (struct max2175*,int,int,int) ;
 int max2175_write_bits (struct max2175*,int,int,int ,int) ;
 int mxm_dbg (struct max2175*,char*,...) ;

__attribute__((used)) static int max2175_set_rx_mode(struct max2175 *ctx, u32 rx_mode)
{
 mxm_dbg(ctx, "set_rx_mode: %u am_hiz %u\n", rx_mode, ctx->am_hiz);
 if (ctx->xtal_freq == MAX2175_EU_XTAL_FREQ)
  max2175_set_eu_rx_mode(ctx, rx_mode);
 else
  max2175_set_na_rx_mode(ctx, rx_mode);

 if (ctx->am_hiz) {
  mxm_dbg(ctx, "setting AM HiZ related config\n");
  max2175_write_bit(ctx, 50, 5, 1);
  max2175_write_bit(ctx, 90, 7, 1);
  max2175_write_bits(ctx, 73, 1, 0, 2);
  max2175_write_bits(ctx, 80, 5, 0, 33);
 }


 max2175_set_bbfilter(ctx);


 max2175_set_hsls(ctx, ctx->hsls->cur.val);


 max2175_i2s_enable(ctx, ctx->i2s_en->cur.val);

 ctx->mode_resolved = 1;

 return 0;
}
