
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_is {int dummy; } ;
struct device {int dummy; } ;


 struct fimc_is* dev_get_drvdata (struct device*) ;
 int fimc_is_disable_clocks (struct fimc_is*) ;

__attribute__((used)) static int fimc_is_runtime_suspend(struct device *dev)
{
 struct fimc_is *is = dev_get_drvdata(dev);

 fimc_is_disable_clocks(is);
 return 0;
}
