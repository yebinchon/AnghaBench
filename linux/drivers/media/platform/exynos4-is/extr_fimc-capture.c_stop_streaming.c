
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct fimc_ctx* drv_priv; } ;
struct fimc_dev {int dummy; } ;
struct fimc_ctx {struct fimc_dev* fimc_dev; } ;


 int fimc_capture_active (struct fimc_dev*) ;
 int fimc_stop_capture (struct fimc_dev*,int) ;

__attribute__((used)) static void stop_streaming(struct vb2_queue *q)
{
 struct fimc_ctx *ctx = q->drv_priv;
 struct fimc_dev *fimc = ctx->fimc_dev;

 if (!fimc_capture_active(fimc))
  return;

 fimc_stop_capture(fimc, 0);
}
