
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct pxp_dev {int dev_mutex; int num_inst; int m2m_dev; } ;
struct TYPE_6__ {int m2m_ctx; struct v4l2_ctrl_handler* ctrl_handler; } ;
struct pxp_ctx {TYPE_2__ fh; int colorspace; TYPE_1__* q_data; struct v4l2_ctrl_handler hdl; struct pxp_dev* dev; } ;
struct file {TYPE_2__* private_data; } ;
struct TYPE_5__ {int width; int height; int sizeimage; int bytesperline; int * fmt; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int V4L2_CID_ALPHA_COMPONENT ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_VFLIP ;
 int V4L2_COLORSPACE_REC709 ;
 size_t V4L2_M2M_DST ;
 size_t V4L2_M2M_SRC ;
 int atomic_inc (int *) ;
 int dprintk (struct pxp_dev*,char*,struct pxp_ctx*,int ) ;
 int * formats ;
 int kfree (struct pxp_ctx*) ;
 struct pxp_ctx* kzalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pxp_bytesperline (int *,int) ;
 int pxp_ctrl_ops ;
 int pxp_sizeimage (int *,int,int) ;
 int queue_init ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;
 int v4l2_fh_add (TYPE_2__*) ;
 int v4l2_fh_exit (TYPE_2__*) ;
 int v4l2_fh_init (TYPE_2__*,int ) ;
 int v4l2_m2m_ctx_init (int ,struct pxp_ctx*,int *) ;
 int video_devdata (struct file*) ;
 struct pxp_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int pxp_open(struct file *file)
{
 struct pxp_dev *dev = video_drvdata(file);
 struct pxp_ctx *ctx = ((void*)0);
 struct v4l2_ctrl_handler *hdl;
 int rc = 0;

 if (mutex_lock_interruptible(&dev->dev_mutex))
  return -ERESTARTSYS;
 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx) {
  rc = -ENOMEM;
  goto open_unlock;
 }

 v4l2_fh_init(&ctx->fh, video_devdata(file));
 file->private_data = &ctx->fh;
 ctx->dev = dev;
 hdl = &ctx->hdl;
 v4l2_ctrl_handler_init(hdl, 4);
 v4l2_ctrl_new_std(hdl, &pxp_ctrl_ops, V4L2_CID_HFLIP, 0, 1, 1, 0);
 v4l2_ctrl_new_std(hdl, &pxp_ctrl_ops, V4L2_CID_VFLIP, 0, 1, 1, 0);
 v4l2_ctrl_new_std(hdl, &pxp_ctrl_ops, V4L2_CID_ALPHA_COMPONENT,
     0, 255, 1, 255);
 if (hdl->error) {
  rc = hdl->error;
  v4l2_ctrl_handler_free(hdl);
  kfree(ctx);
  goto open_unlock;
 }
 ctx->fh.ctrl_handler = hdl;
 v4l2_ctrl_handler_setup(hdl);

 ctx->q_data[V4L2_M2M_SRC].fmt = &formats[0];
 ctx->q_data[V4L2_M2M_SRC].width = 640;
 ctx->q_data[V4L2_M2M_SRC].height = 480;
 ctx->q_data[V4L2_M2M_SRC].bytesperline =
  pxp_bytesperline(&formats[0], 640);
 ctx->q_data[V4L2_M2M_SRC].sizeimage =
  pxp_sizeimage(&formats[0], 640, 480);
 ctx->q_data[V4L2_M2M_DST] = ctx->q_data[V4L2_M2M_SRC];
 ctx->colorspace = V4L2_COLORSPACE_REC709;

 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, ctx, &queue_init);

 if (IS_ERR(ctx->fh.m2m_ctx)) {
  rc = PTR_ERR(ctx->fh.m2m_ctx);

  v4l2_ctrl_handler_free(hdl);
  v4l2_fh_exit(&ctx->fh);
  kfree(ctx);
  goto open_unlock;
 }

 v4l2_fh_add(&ctx->fh);
 atomic_inc(&dev->num_inst);

 dprintk(dev, "Created instance: %p, m2m_ctx: %p\n",
  ctx, ctx->fh.m2m_ctx);

open_unlock:
 mutex_unlock(&dev->dev_mutex);
 return rc;
}
