
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct cal_dev {struct cal_ctx** ctx; } ;
struct cal_ctx {int vdev; int v4l2_dev; int ctrl_handler; int notifier; } ;


 int CAL_MODULE_NAME ;
 int CAL_NUM_CONTEXT ;
 int cal_dbg (int,struct cal_dev*,char*,int ) ;
 int cal_runtime_get (struct cal_dev*) ;
 int cal_runtime_put (struct cal_dev*) ;
 int camerarx_phy_disable (struct cal_ctx*) ;
 int ctx_dbg (int,struct cal_ctx*,char*,int ) ;
 scalar_t__ platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;
 int video_device_node_name (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int cal_remove(struct platform_device *pdev)
{
 struct cal_dev *dev =
  (struct cal_dev *)platform_get_drvdata(pdev);
 struct cal_ctx *ctx;
 int i;

 cal_dbg(1, dev, "Removing %s\n", CAL_MODULE_NAME);

 cal_runtime_get(dev);

 for (i = 0; i < CAL_NUM_CONTEXT; i++) {
  ctx = dev->ctx[i];
  if (ctx) {
   ctx_dbg(1, ctx, "unregistering %s\n",
    video_device_node_name(&ctx->vdev));
   camerarx_phy_disable(ctx);
   v4l2_async_notifier_unregister(&ctx->notifier);
   v4l2_async_notifier_cleanup(&ctx->notifier);
   v4l2_ctrl_handler_free(&ctx->ctrl_handler);
   v4l2_device_unregister(&ctx->v4l2_dev);
   video_unregister_device(&ctx->vdev);
  }
 }

 cal_runtime_put(dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
