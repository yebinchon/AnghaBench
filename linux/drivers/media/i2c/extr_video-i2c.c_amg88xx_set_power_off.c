
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_i2c_data {int regmap; } ;


 int AMG88XX_PCTL_SLEEP ;
 int AMG88XX_REG_PCTL ;
 int msleep (int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int amg88xx_set_power_off(struct video_i2c_data *data)
{
 int ret;

 ret = regmap_write(data->regmap, AMG88XX_REG_PCTL, AMG88XX_PCTL_SLEEP);
 if (ret)
  return ret;





 msleep(100);

 return 0;
}
