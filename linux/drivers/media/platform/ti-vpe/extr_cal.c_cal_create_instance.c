
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_ctrl_handler {int dummy; } ;
struct cal_dev {int * cc; TYPE_1__* pdev; } ;
struct TYPE_5__ {struct v4l2_ctrl_handler* ctrl_handler; int name; } ;
struct cal_ctx {int csi2_port; TYPE_2__ v4l2_dev; int cc; struct v4l2_ctrl_handler ctrl_handler; struct cal_dev* dev; } ;
struct TYPE_4__ {int dev; } ;


 char* CAL_MODULE_NAME ;
 int EINVAL ;
 int GFP_KERNEL ;
 int ctx_err (struct cal_ctx*,char*) ;
 struct cal_ctx* devm_kzalloc (int *,int,int ) ;
 int of_cal_create_instance (struct cal_ctx*,int) ;
 int snprintf (int ,int,char*,char*,int) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_device_register (int *,TYPE_2__*) ;
 int v4l2_device_unregister (TYPE_2__*) ;

__attribute__((used)) static struct cal_ctx *cal_create_instance(struct cal_dev *dev, int inst)
{
 struct cal_ctx *ctx;
 struct v4l2_ctrl_handler *hdl;
 int ret;

 ctx = devm_kzalloc(&dev->pdev->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return ((void*)0);


 ctx->dev = dev;

 snprintf(ctx->v4l2_dev.name, sizeof(ctx->v4l2_dev.name),
   "%s-%03d", CAL_MODULE_NAME, inst);
 ret = v4l2_device_register(&dev->pdev->dev, &ctx->v4l2_dev);
 if (ret)
  goto err_exit;

 hdl = &ctx->ctrl_handler;
 ret = v4l2_ctrl_handler_init(hdl, 11);
 if (ret) {
  ctx_err(ctx, "Failed to init ctrl handler\n");
  goto unreg_dev;
 }
 ctx->v4l2_dev.ctrl_handler = hdl;


 ctx->cc = dev->cc[inst];


 ctx->csi2_port = inst + 1;

 ret = of_cal_create_instance(ctx, inst);
 if (ret) {
  ret = -EINVAL;
  goto free_hdl;
 }
 return ctx;

free_hdl:
 v4l2_ctrl_handler_free(hdl);
unreg_dev:
 v4l2_device_unregister(&ctx->v4l2_dev);
err_exit:
 return ((void*)0);
}
