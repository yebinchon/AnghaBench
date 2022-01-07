
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9p031 {int use_pll; int subdev; } ;
struct i2c_client {int dummy; } ;


 int MT9P031_PLL_CONTROL ;
 int MT9P031_PLL_CONTROL_PWROFF ;
 int mt9p031_write (struct i2c_client*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static inline int mt9p031_pll_disable(struct mt9p031 *mt9p031)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9p031->subdev);

 if (!mt9p031->use_pll)
  return 0;

 return mt9p031_write(client, MT9P031_PLL_CONTROL,
        MT9P031_PLL_CONTROL_PWROFF);
}
