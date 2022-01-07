
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct mt9v032 {int ctrls; TYPE_2__* model; TYPE_3__* pdata; struct regmap* regmap; } ;
struct TYPE_6__ {scalar_t__ clk_pol; } ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int pclk_reg; } ;


 int MT9V032_PIXEL_CLOCK_INV_PXL_CLK ;
 int MT9V032_ROW_NOISE_CORR_CONTROL ;
 int mt9v032_power_off (struct mt9v032*) ;
 int mt9v032_power_on (struct mt9v032*) ;
 int regmap_write (struct regmap*,int ,int ) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int __mt9v032_set_power(struct mt9v032 *mt9v032, bool on)
{
 struct regmap *map = mt9v032->regmap;
 int ret;

 if (!on) {
  mt9v032_power_off(mt9v032);
  return 0;
 }

 ret = mt9v032_power_on(mt9v032);
 if (ret < 0)
  return ret;


 if (mt9v032->pdata && mt9v032->pdata->clk_pol) {
  ret = regmap_write(map, mt9v032->model->data->pclk_reg,
    MT9V032_PIXEL_CLOCK_INV_PXL_CLK);
  if (ret < 0)
   return ret;
 }


 ret = regmap_write(map, MT9V032_ROW_NOISE_CORR_CONTROL, 0);
 if (ret < 0)
  return ret;

 return v4l2_ctrl_handler_setup(&mt9v032->ctrls);
}
