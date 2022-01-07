
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmp_camera_platform_data {int dphy3_algo; int* dphy; int lane_clk; } ;
struct mmp_camera {int mipi_clk; TYPE_1__* pdev; } ;
struct mcam_camera {int dummy; } ;
struct device {struct mmp_camera_platform_data* platform_data; } ;
struct TYPE_2__ {struct device dev; } ;




 scalar_t__ IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (struct device*,char*,...) ;
 struct mmp_camera* mcam_to_cam (struct mcam_camera*) ;

__attribute__((used)) static void mmpcam_calc_dphy(struct mcam_camera *mcam)
{
 struct mmp_camera *cam = mcam_to_cam(mcam);
 struct mmp_camera_platform_data *pdata = cam->pdev->dev.platform_data;
 struct device *dev = &cam->pdev->dev;
 unsigned long tx_clk_esc;
 switch (pdata->dphy3_algo) {
 case 128:



  pdata->dphy[0] =
   (((1 + (pdata->lane_clk * 80) / 1000) & 0xff) << 8)
   | (1 + pdata->lane_clk * 35 / 1000);
  break;
 case 129:



  pdata->dphy[0] =
   (((2 + (pdata->lane_clk * 110) / 1000) & 0xff) << 8)
   | (1 + pdata->lane_clk * 35 / 1000);
  break;
 default:



  dev_dbg(dev, "camera: use the default CSI2_DPHY3 value\n");
 }




 if (IS_ERR(cam->mipi_clk))
  return;


 clk_prepare_enable(cam->mipi_clk);
 tx_clk_esc = (clk_get_rate(cam->mipi_clk) / 1000000) / 12;
 clk_disable_unprepare(cam->mipi_clk);
 pdata->dphy[2] =
  ((((534 * tx_clk_esc) / 2000 - 1) & 0xff) << 8)
  | (((38 * tx_clk_esc) / 1000 - 1) & 0xff);

 dev_dbg(dev, "camera: DPHY sets: dphy3=0x%x, dphy5=0x%x, dphy6=0x%x\n",
  pdata->dphy[0], pdata->dphy[1], pdata->dphy[2]);
}
