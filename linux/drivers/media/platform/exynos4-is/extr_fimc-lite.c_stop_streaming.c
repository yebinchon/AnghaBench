
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct fimc_lite* drv_priv; } ;
struct fimc_lite {int dummy; } ;


 int fimc_lite_active (struct fimc_lite*) ;
 int fimc_lite_stop_capture (struct fimc_lite*,int) ;

__attribute__((used)) static void stop_streaming(struct vb2_queue *q)
{
 struct fimc_lite *fimc = q->drv_priv;

 if (!fimc_lite_active(fimc))
  return;

 fimc_lite_stop_capture(fimc, 0);
}
