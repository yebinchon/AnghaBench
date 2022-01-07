
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct vim2m_dev {int dev_mutex; int num_inst; int m2m_dev; } ;
struct TYPE_11__ {int m2m_ctx; struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct vim2m_ctx {TYPE_4__ fh; int work_run; int irqlock; int vb_mutex; int colorspace; TYPE_1__* q_data; struct v4l2_ctrl_handler hdl; struct vim2m_dev* dev; } ;
struct file {TYPE_4__* private_data; } ;
struct TYPE_12__ {int depth; } ;
struct TYPE_10__ {int def; } ;
struct TYPE_9__ {int width; int height; int sizeimage; TYPE_8__* fmt; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_VFLIP ;
 int V4L2_COLORSPACE_REC709 ;
 size_t V4L2_M2M_DST ;
 size_t V4L2_M2M_SRC ;
 int atomic_inc (int *) ;
 int default_transtime ;
 int device_work ;
 int dprintk (struct vim2m_dev*,int,char*,struct vim2m_ctx*,int ) ;
 TYPE_8__* formats ;
 int kfree (struct vim2m_ctx*) ;
 struct vim2m_ctx* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int queue_init ;
 int spin_lock_init (int *) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_custom (struct v4l2_ctrl_handler*,TYPE_2__*,int *) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int ) ;
 int v4l2_fh_add (TYPE_4__*) ;
 int v4l2_fh_exit (TYPE_4__*) ;
 int v4l2_fh_init (TYPE_4__*,int ) ;
 int v4l2_m2m_ctx_init (int ,struct vim2m_ctx*,int *) ;
 int video_devdata (struct file*) ;
 struct vim2m_dev* video_drvdata (struct file*) ;
 int vim2m_ctrl_ops ;
 TYPE_2__ vim2m_ctrl_trans_num_bufs ;
 TYPE_2__ vim2m_ctrl_trans_time_msec ;

__attribute__((used)) static int vim2m_open(struct file *file)
{
 struct vim2m_dev *dev = video_drvdata(file);
 struct vim2m_ctx *ctx = ((void*)0);
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
 v4l2_ctrl_new_std(hdl, &vim2m_ctrl_ops, V4L2_CID_HFLIP, 0, 1, 1, 0);
 v4l2_ctrl_new_std(hdl, &vim2m_ctrl_ops, V4L2_CID_VFLIP, 0, 1, 1, 0);

 vim2m_ctrl_trans_time_msec.def = default_transtime;
 v4l2_ctrl_new_custom(hdl, &vim2m_ctrl_trans_time_msec, ((void*)0));
 v4l2_ctrl_new_custom(hdl, &vim2m_ctrl_trans_num_bufs, ((void*)0));
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
 ctx->q_data[V4L2_M2M_SRC].sizeimage =
  ctx->q_data[V4L2_M2M_SRC].width *
  ctx->q_data[V4L2_M2M_SRC].height *
  (ctx->q_data[V4L2_M2M_SRC].fmt->depth >> 3);
 ctx->q_data[V4L2_M2M_DST] = ctx->q_data[V4L2_M2M_SRC];
 ctx->colorspace = V4L2_COLORSPACE_REC709;

 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, ctx, &queue_init);

 mutex_init(&ctx->vb_mutex);
 spin_lock_init(&ctx->irqlock);
 INIT_DELAYED_WORK(&ctx->work_run, device_work);

 if (IS_ERR(ctx->fh.m2m_ctx)) {
  rc = PTR_ERR(ctx->fh.m2m_ctx);

  v4l2_ctrl_handler_free(hdl);
  v4l2_fh_exit(&ctx->fh);
  kfree(ctx);
  goto open_unlock;
 }

 v4l2_fh_add(&ctx->fh);
 atomic_inc(&dev->num_inst);

 dprintk(dev, 1, "Created instance: %p, m2m_ctx: %p\n",
  ctx, ctx->fh.m2m_ctx);

open_unlock:
 mutex_unlock(&dev->dev_mutex);
 return rc;
}
