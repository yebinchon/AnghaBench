
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ve; } ;
struct fimc_dev {TYPE_1__ vid_cap; } ;


 int close ;
 int fimc_capture_busy (struct fimc_dev*) ;
 int fimc_pipeline_call (int *,int ) ;
 int fimc_stop_capture (struct fimc_dev*,int) ;

int fimc_capture_suspend(struct fimc_dev *fimc)
{
 bool suspend = fimc_capture_busy(fimc);

 int ret = fimc_stop_capture(fimc, suspend);
 if (ret)
  return ret;
 return fimc_pipeline_call(&fimc->vid_cap.ve, close);
}
