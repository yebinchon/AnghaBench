
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct TYPE_9__ {int m2m_ctx; int * ctrl_handler; } ;
struct TYPE_8__ {int format; int fmtinfo; } ;
struct TYPE_7__ {int format; int fmtinfo; } ;
struct jpu_ctx {int encoder; TYPE_3__ fh; TYPE_2__ cap_q; TYPE_1__ out_q; struct jpu* jpu; int ctrl_handler; } ;
struct jpu {scalar_t__ ref_count; int mutex; int clk; int m2m_dev; struct video_device vfd_encoder; } ;
struct file {TYPE_3__* private_data; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int __jpu_try_fmt (struct jpu_ctx*,int *,int *,int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int jpu_controls_create (struct jpu_ctx*) ;
 int jpu_queue_init ;
 int jpu_reset (struct jpu*) ;
 int kfree (struct jpu_ctx*) ;
 struct jpu_ctx* kzalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_fh_add (TYPE_3__*) ;
 int v4l2_fh_del (TYPE_3__*) ;
 int v4l2_fh_exit (TYPE_3__*) ;
 int v4l2_fh_init (TYPE_3__*,struct video_device*) ;
 int v4l2_m2m_ctx_init (int ,struct jpu_ctx*,int ) ;
 struct video_device* video_devdata (struct file*) ;
 struct jpu* video_drvdata (struct file*) ;

__attribute__((used)) static int jpu_open(struct file *file)
{
 struct jpu *jpu = video_drvdata(file);
 struct video_device *vfd = video_devdata(file);
 struct jpu_ctx *ctx;
 int ret;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 v4l2_fh_init(&ctx->fh, vfd);
 ctx->fh.ctrl_handler = &ctx->ctrl_handler;
 file->private_data = &ctx->fh;
 v4l2_fh_add(&ctx->fh);

 ctx->jpu = jpu;
 ctx->encoder = vfd == &jpu->vfd_encoder;

 __jpu_try_fmt(ctx, &ctx->out_q.fmtinfo, &ctx->out_q.format,
        V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
 __jpu_try_fmt(ctx, &ctx->cap_q.fmtinfo, &ctx->cap_q.format,
        V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);

 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(jpu->m2m_dev, ctx, jpu_queue_init);
 if (IS_ERR(ctx->fh.m2m_ctx)) {
  ret = PTR_ERR(ctx->fh.m2m_ctx);
  goto v4l_prepare_rollback;
 }

 ret = jpu_controls_create(ctx);
 if (ret < 0)
  goto v4l_prepare_rollback;

 if (mutex_lock_interruptible(&jpu->mutex)) {
  ret = -ERESTARTSYS;
  goto v4l_prepare_rollback;
 }

 if (jpu->ref_count == 0) {
  ret = clk_prepare_enable(jpu->clk);
  if (ret < 0)
   goto device_prepare_rollback;

  ret = jpu_reset(jpu);
  if (ret)
   goto jpu_reset_rollback;
 }

 jpu->ref_count++;

 mutex_unlock(&jpu->mutex);
 return 0;

jpu_reset_rollback:
 clk_disable_unprepare(jpu->clk);
device_prepare_rollback:
 mutex_unlock(&jpu->mutex);
v4l_prepare_rollback:
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 kfree(ctx);
 return ret;
}
