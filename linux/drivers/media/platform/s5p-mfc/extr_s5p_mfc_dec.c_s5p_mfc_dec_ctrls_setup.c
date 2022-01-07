
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v4l2_ctrl_config {scalar_t__ menu_skip_mask; int step; int type; int name; int def; int max; int min; int id; int * ops; } ;
struct TYPE_8__ {int error; } ;
struct s5p_mfc_ctx {TYPE_1__** ctrls; TYPE_2__ ctrl_handler; } ;
struct TYPE_9__ {scalar_t__ is_volatile; int default_value; int step; int maximum; int minimum; int id; int type; int name; } ;
struct TYPE_7__ {int flags; } ;


 scalar_t__ IS_MFC51_PRIV (int ) ;
 int NUM_CTRLS ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 TYPE_6__* controls ;
 int memset (struct v4l2_ctrl_config*,int ,int) ;
 int mfc_err (char*,...) ;
 int s5p_mfc_dec_ctrl_ops ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int) ;
 TYPE_1__* v4l2_ctrl_new_custom (TYPE_2__*,struct v4l2_ctrl_config*,int *) ;
 TYPE_1__* v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int ,int ,int ,int ) ;

int s5p_mfc_dec_ctrls_setup(struct s5p_mfc_ctx *ctx)
{
 struct v4l2_ctrl_config cfg;
 int i;

 v4l2_ctrl_handler_init(&ctx->ctrl_handler, NUM_CTRLS);
 if (ctx->ctrl_handler.error) {
  mfc_err("v4l2_ctrl_handler_init failed\n");
  return ctx->ctrl_handler.error;
 }

 for (i = 0; i < NUM_CTRLS; i++) {
  if (IS_MFC51_PRIV(controls[i].id)) {
   memset(&cfg, 0, sizeof(struct v4l2_ctrl_config));
   cfg.ops = &s5p_mfc_dec_ctrl_ops;
   cfg.id = controls[i].id;
   cfg.min = controls[i].minimum;
   cfg.max = controls[i].maximum;
   cfg.def = controls[i].default_value;
   cfg.name = controls[i].name;
   cfg.type = controls[i].type;

   cfg.step = controls[i].step;
   cfg.menu_skip_mask = 0;

   ctx->ctrls[i] = v4l2_ctrl_new_custom(&ctx->ctrl_handler,
     &cfg, ((void*)0));
  } else {
   ctx->ctrls[i] = v4l2_ctrl_new_std(&ctx->ctrl_handler,
     &s5p_mfc_dec_ctrl_ops,
     controls[i].id, controls[i].minimum,
     controls[i].maximum, controls[i].step,
     controls[i].default_value);
  }
  if (ctx->ctrl_handler.error) {
   mfc_err("Adding control (%d) failed\n", i);
   return ctx->ctrl_handler.error;
  }
  if (controls[i].is_volatile && ctx->ctrls[i])
   ctx->ctrls[i]->flags |= V4L2_CTRL_FLAG_VOLATILE;
 }
 return 0;
}
