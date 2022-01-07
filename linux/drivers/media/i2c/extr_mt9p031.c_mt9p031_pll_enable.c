
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m; int n; int p1; } ;
struct mt9p031 {TYPE_1__ pll; int use_pll; int subdev; } ;
struct i2c_client {int dummy; } ;


 int MT9P031_PLL_CONFIG_1 ;
 int MT9P031_PLL_CONFIG_2 ;
 int MT9P031_PLL_CONTROL ;
 int MT9P031_PLL_CONTROL_PWRON ;
 int MT9P031_PLL_CONTROL_USEPLL ;
 int mt9p031_write (struct i2c_client*,int ,int) ;
 int usleep_range (int,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int mt9p031_pll_enable(struct mt9p031 *mt9p031)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9p031->subdev);
 int ret;

 if (!mt9p031->use_pll)
  return 0;

 ret = mt9p031_write(client, MT9P031_PLL_CONTROL,
       MT9P031_PLL_CONTROL_PWRON);
 if (ret < 0)
  return ret;

 ret = mt9p031_write(client, MT9P031_PLL_CONFIG_1,
       (mt9p031->pll.m << 8) | (mt9p031->pll.n - 1));
 if (ret < 0)
  return ret;

 ret = mt9p031_write(client, MT9P031_PLL_CONFIG_2, mt9p031->pll.p1 - 1);
 if (ret < 0)
  return ret;

 usleep_range(1000, 2000);
 ret = mt9p031_write(client, MT9P031_PLL_CONTROL,
       MT9P031_PLL_CONTROL_PWRON |
       MT9P031_PLL_CONTROL_USEPLL);
 return ret;
}
