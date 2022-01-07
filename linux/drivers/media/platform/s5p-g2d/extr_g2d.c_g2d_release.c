
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_dev {int v4l2_dev; } ;
struct g2d_ctx {int fh; int ctrl_handler; } ;
struct file {int private_data; } ;


 struct g2d_ctx* fh2ctx (int ) ;
 int kfree (struct g2d_ctx*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 int v4l2_info (int *,char*) ;
 struct g2d_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int g2d_release(struct file *file)
{
 struct g2d_dev *dev = video_drvdata(file);
 struct g2d_ctx *ctx = fh2ctx(file->private_data);

 v4l2_ctrl_handler_free(&ctx->ctrl_handler);
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 kfree(ctx);
 v4l2_info(&dev->v4l2_dev, "instance closed\n");
 return 0;
}
