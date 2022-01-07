
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file {struct deinterlace_ctx* private_data; } ;
struct deinterlace_dev {int dummy; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct deinterlace_ctx {struct deinterlace_ctx* xt; TYPE_1__ fh; } ;


 int dprintk (struct deinterlace_dev*,char*,struct deinterlace_ctx*) ;
 int kfree (struct deinterlace_ctx*) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_m2m_ctx_release (int ) ;
 struct deinterlace_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int deinterlace_release(struct file *file)
{
 struct deinterlace_dev *pcdev = video_drvdata(file);
 struct deinterlace_ctx *ctx = file->private_data;

 dprintk(pcdev, "Releasing instance %p\n", ctx);

 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
 kfree(ctx->xt);
 kfree(ctx);

 return 0;
}
