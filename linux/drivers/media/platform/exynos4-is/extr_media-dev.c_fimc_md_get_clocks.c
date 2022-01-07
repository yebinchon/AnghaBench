
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fimc_md {struct clk** wbclk; int v4l2_dev; int use_isp; TYPE_2__* camclk; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;
typedef int clk_name ;
struct TYPE_4__ {struct clk* clock; } ;
struct TYPE_3__ {struct device dev; } ;


 size_t CLK_IDX_WB_A ;
 int CLK_IDX_WB_B ;
 int EINVAL ;
 void* ERR_PTR (int ) ;
 int FIMC_MAX_CAMCLKS ;
 int FIMC_MAX_WBCLKS ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_get (struct device*,char*) ;
 int dev_err (struct device*,char*,char*) ;
 int fimc_md_put_clocks (struct fimc_md*) ;
 int snprintf (char*,int,char*,int) ;
 int v4l2_err (int *,char*,char*) ;

__attribute__((used)) static int fimc_md_get_clocks(struct fimc_md *fmd)
{
 struct device *dev = &fmd->pdev->dev;
 char clk_name[32];
 struct clk *clock;
 int i, ret = 0;

 for (i = 0; i < FIMC_MAX_CAMCLKS; i++)
  fmd->camclk[i].clock = ERR_PTR(-EINVAL);

 for (i = 0; i < FIMC_MAX_CAMCLKS; i++) {
  snprintf(clk_name, sizeof(clk_name), "sclk_cam%u", i);
  clock = clk_get(dev, clk_name);

  if (IS_ERR(clock)) {
   dev_err(dev, "Failed to get clock: %s\n", clk_name);
   ret = PTR_ERR(clock);
   break;
  }
  fmd->camclk[i].clock = clock;
 }
 if (ret)
  fimc_md_put_clocks(fmd);

 if (!fmd->use_isp)
  return 0;




 fmd->wbclk[CLK_IDX_WB_A] = ERR_PTR(-EINVAL);

 for (i = CLK_IDX_WB_B; i < FIMC_MAX_WBCLKS; i++) {
  snprintf(clk_name, sizeof(clk_name), "pxl_async%u", i);
  clock = clk_get(dev, clk_name);
  if (IS_ERR(clock)) {
   v4l2_err(&fmd->v4l2_dev, "Failed to get clock: %s\n",
      clk_name);
   ret = PTR_ERR(clock);
   break;
  }
  fmd->wbclk[i] = clock;
 }
 if (ret)
  fimc_md_put_clocks(fmd);

 return ret;
}
