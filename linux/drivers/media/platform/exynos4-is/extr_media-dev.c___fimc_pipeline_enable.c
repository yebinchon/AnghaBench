
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_pipeline {scalar_t__* subdevs; } ;
struct fimc_md {int * wbclk; } ;
struct exynos_media_pipeline {int dummy; } ;


 size_t CLK_IDX_WB_B ;
 size_t IDX_IS_ISP ;
 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int fimc_pipeline_s_power (struct fimc_pipeline*,int) ;
 struct fimc_pipeline* to_fimc_pipeline (struct exynos_media_pipeline*) ;

__attribute__((used)) static int __fimc_pipeline_enable(struct exynos_media_pipeline *ep,
      struct fimc_md *fmd)
{
 struct fimc_pipeline *p = to_fimc_pipeline(ep);
 int ret;


 if (!IS_ERR(fmd->wbclk[CLK_IDX_WB_B]) && p->subdevs[IDX_IS_ISP]) {
  ret = clk_prepare_enable(fmd->wbclk[CLK_IDX_WB_B]);
  if (ret < 0)
   return ret;
 }

 ret = fimc_pipeline_s_power(p, 1);
 if (!ret)
  return 0;

 if (!IS_ERR(fmd->wbclk[CLK_IDX_WB_B]) && p->subdevs[IDX_IS_ISP])
  clk_disable_unprepare(fmd->wbclk[CLK_IDX_WB_B]);

 return ret;
}
