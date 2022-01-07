
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_is {int isp; } ;


 int fimc_isp_subdev_destroy (int *) ;

__attribute__((used)) static int fimc_is_unregister_subdevs(struct fimc_is *is)
{
 fimc_isp_subdev_destroy(&is->isp);
 return 0;
}
