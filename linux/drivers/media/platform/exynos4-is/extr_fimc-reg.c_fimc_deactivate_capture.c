
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_dev {int dummy; } ;


 int fimc_hw_disable_capture (struct fimc_dev*) ;
 int fimc_hw_en_lastirq (struct fimc_dev*,int) ;
 int fimc_hw_enable_scaler (struct fimc_dev*,int) ;

void fimc_deactivate_capture(struct fimc_dev *fimc)
{
 fimc_hw_en_lastirq(fimc, 1);
 fimc_hw_disable_capture(fimc);
 fimc_hw_enable_scaler(fimc, 0);
 fimc_hw_en_lastirq(fimc, 0);
}
