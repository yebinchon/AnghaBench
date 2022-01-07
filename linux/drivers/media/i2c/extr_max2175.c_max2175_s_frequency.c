
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct max2175 {TYPE_5__* rx_mode; scalar_t__ mode_resolved; int freq; TYPE_3__* hsls; TYPE_1__* bands_rf; } ;
struct TYPE_9__ {int val; } ;
struct TYPE_10__ {TYPE_4__ cur; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_8__ {TYPE_2__ cur; } ;
struct TYPE_6__ {int rangehigh; int rangelow; } ;


 int EINVAL ;
 int clamp (int ,int ,int ) ;
 scalar_t__ max2175_freq_rx_mode_valid (struct max2175*,int ,int ) ;
 struct max2175* max2175_from_sd (struct v4l2_subdev*) ;
 int max2175_set_freq_and_mode (struct max2175*,int ) ;
 int max2175_tune_rf_freq (struct max2175*,int ,int ) ;
 int mxm_dbg (struct max2175*,char*,int,int ,scalar_t__,...) ;

__attribute__((used)) static int max2175_s_frequency(struct v4l2_subdev *sd,
          const struct v4l2_frequency *vf)
{
 struct max2175 *ctx = max2175_from_sd(sd);
 u32 freq;
 int ret = 0;

 mxm_dbg(ctx, "s_freq: new %u curr %u, mode_resolved %d\n",
  vf->frequency, ctx->freq, ctx->mode_resolved);

 if (vf->tuner != 0)
  return -EINVAL;

 freq = clamp(vf->frequency, ctx->bands_rf->rangelow,
       ctx->bands_rf->rangehigh);


 if (ctx->mode_resolved &&
     max2175_freq_rx_mode_valid(ctx, ctx->rx_mode->cur.val, freq))
  ret = max2175_tune_rf_freq(ctx, freq, ctx->hsls->cur.val);
 else

  ret = max2175_set_freq_and_mode(ctx, freq);

 mxm_dbg(ctx, "s_freq: ret %d curr %u mode_resolved %d mode %u\n",
  ret, ctx->freq, ctx->mode_resolved, ctx->rx_mode->cur.val);

 return ret;
}
