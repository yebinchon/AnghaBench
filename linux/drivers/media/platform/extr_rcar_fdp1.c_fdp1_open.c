
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct v4l2_pix_format_mplane {int dummy; } ;
struct v4l2_ctrl {int flags; } ;
struct file {TYPE_1__* private_data; } ;
struct fdp1_dev {int dev_mutex; int dev; int m2m_dev; } ;
struct TYPE_8__ {int m2m_ctx; TYPE_3__* ctrl_handler; } ;
struct TYPE_9__ {int error; } ;
struct fdp1_ctx {int translen; TYPE_1__ fh; TYPE_3__ hdl; scalar_t__ sequence; int fields_queue; struct fdp1_dev* fdp1; } ;
typedef int format ;


 int BIT (int ) ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int FDP1_FIXED3D ;
 int FDP1_NEXTFIELD ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int V4L2_CID_ALPHA_COMPONENT ;
 int V4L2_CID_DEINTERLACING_MODE ;
 int V4L2_CID_MIN_BUFFERS_FOR_CAPTURE ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int dprintk (struct fdp1_dev*,char*,struct fdp1_ctx*,int ) ;
 int fdp1_ctrl_deint_menu ;
 int fdp1_ctrl_ops ;
 int fdp1_set_format (struct fdp1_ctx*,struct v4l2_pix_format_mplane*,int ) ;
 int kfree (struct fdp1_ctx*) ;
 struct fdp1_ctx* kzalloc (int,int ) ;
 int memset (struct v4l2_pix_format_mplane*,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int queue_init ;
 int v4l2_ctrl_handler_free (TYPE_3__*) ;
 int v4l2_ctrl_handler_init (TYPE_3__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_3__*) ;
 struct v4l2_ctrl* v4l2_ctrl_new_std (TYPE_3__*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu_items (TYPE_3__*,int *,int ,int ,int ,int ,int ) ;
 int v4l2_fh_add (TYPE_1__*) ;
 int v4l2_fh_init (TYPE_1__*,int ) ;
 int v4l2_m2m_ctx_init (int ,struct fdp1_ctx*,int *) ;
 int video_devdata (struct file*) ;
 struct fdp1_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fdp1_open(struct file *file)
{
 struct fdp1_dev *fdp1 = video_drvdata(file);
 struct v4l2_pix_format_mplane format;
 struct fdp1_ctx *ctx = ((void*)0);
 struct v4l2_ctrl *ctrl;
 int ret = 0;

 if (mutex_lock_interruptible(&fdp1->dev_mutex))
  return -ERESTARTSYS;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx) {
  ret = -ENOMEM;
  goto done;
 }

 v4l2_fh_init(&ctx->fh, video_devdata(file));
 file->private_data = &ctx->fh;
 ctx->fdp1 = fdp1;


 INIT_LIST_HEAD(&ctx->fields_queue);

 ctx->translen = 1;
 ctx->sequence = 0;



 v4l2_ctrl_handler_init(&ctx->hdl, 3);
 v4l2_ctrl_new_std_menu_items(&ctx->hdl, &fdp1_ctrl_ops,
         V4L2_CID_DEINTERLACING_MODE,
         FDP1_NEXTFIELD, BIT(0), FDP1_FIXED3D,
         fdp1_ctrl_deint_menu);

 ctrl = v4l2_ctrl_new_std(&ctx->hdl, &fdp1_ctrl_ops,
     V4L2_CID_MIN_BUFFERS_FOR_CAPTURE, 1, 2, 1, 1);
 if (ctrl)
  ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE;

 v4l2_ctrl_new_std(&ctx->hdl, &fdp1_ctrl_ops,
     V4L2_CID_ALPHA_COMPONENT, 0, 255, 1, 255);

 if (ctx->hdl.error) {
  ret = ctx->hdl.error;
  v4l2_ctrl_handler_free(&ctx->hdl);
  kfree(ctx);
  goto done;
 }

 ctx->fh.ctrl_handler = &ctx->hdl;
 v4l2_ctrl_handler_setup(&ctx->hdl);


 memset(&format, 0, sizeof(format));
 fdp1_set_format(ctx, &format, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);

 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(fdp1->m2m_dev, ctx, &queue_init);

 if (IS_ERR(ctx->fh.m2m_ctx)) {
  ret = PTR_ERR(ctx->fh.m2m_ctx);

  v4l2_ctrl_handler_free(&ctx->hdl);
  kfree(ctx);
  goto done;
 }


 pm_runtime_get_sync(fdp1->dev);

 v4l2_fh_add(&ctx->fh);

 dprintk(fdp1, "Created instance: %p, m2m_ctx: %p\n",
  ctx, ctx->fh.m2m_ctx);

done:
 mutex_unlock(&fdp1->dev_mutex);
 return ret;
}
