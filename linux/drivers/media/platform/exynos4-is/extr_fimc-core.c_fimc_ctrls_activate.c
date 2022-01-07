
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int type; } ;
struct TYPE_11__ {int lock; } ;
struct fimc_ctrls {TYPE_5__ handler; TYPE_6__* vflip; TYPE_6__* hflip; TYPE_6__* rotate; TYPE_6__* colorfx; TYPE_6__* alpha; int ready; } ;
struct TYPE_8__ {TYPE_1__* fmt; } ;
struct fimc_ctx {int vflip; int hflip; int rotation; TYPE_4__ effect; struct fimc_ctrls ctrls; TYPE_2__ d_frame; } ;
struct TYPE_9__ {int val; } ;
struct TYPE_12__ {int val; TYPE_3__ cur; } ;
struct TYPE_7__ {unsigned int flags; } ;


 int FIMC_REG_CIIMGEFF_FIN_BYPASS ;
 unsigned int FMT_HAS_ALPHA ;
 int fimc_set_color_effect (struct fimc_ctx*,int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int v4l2_ctrl_activate (TYPE_6__*,int) ;

void fimc_ctrls_activate(struct fimc_ctx *ctx, bool active)
{
 unsigned int has_alpha = ctx->d_frame.fmt->flags & FMT_HAS_ALPHA;
 struct fimc_ctrls *ctrls = &ctx->ctrls;

 if (!ctrls->ready)
  return;

 mutex_lock(ctrls->handler.lock);
 v4l2_ctrl_activate(ctrls->rotate, active);
 v4l2_ctrl_activate(ctrls->hflip, active);
 v4l2_ctrl_activate(ctrls->vflip, active);
 v4l2_ctrl_activate(ctrls->colorfx, active);
 if (ctrls->alpha)
  v4l2_ctrl_activate(ctrls->alpha, active && has_alpha);

 if (active) {
  fimc_set_color_effect(ctx, ctrls->colorfx->cur.val);
  ctx->rotation = ctrls->rotate->val;
  ctx->hflip = ctrls->hflip->val;
  ctx->vflip = ctrls->vflip->val;
 } else {
  ctx->effect.type = FIMC_REG_CIIMGEFF_FIN_BYPASS;
  ctx->rotation = 0;
  ctx->hflip = 0;
  ctx->vflip = 0;
 }
 mutex_unlock(ctrls->handler.lock);
}
