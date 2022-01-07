
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_i2c_data {int regmap; } ;


 int AMG88XX_PCTL_NORMAL ;
 int AMG88XX_REG_PCTL ;
 int AMG88XX_REG_RST ;
 int AMG88XX_RST_FLAG ;
 int AMG88XX_RST_INIT ;
 int msleep (int) ;
 int regmap_write (int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int amg88xx_set_power_on(struct video_i2c_data *data)
{
 int ret;

 ret = regmap_write(data->regmap, AMG88XX_REG_PCTL, AMG88XX_PCTL_NORMAL);
 if (ret)
  return ret;

 msleep(50);

 ret = regmap_write(data->regmap, AMG88XX_REG_RST, AMG88XX_RST_INIT);
 if (ret)
  return ret;

 usleep_range(2000, 3000);

 ret = regmap_write(data->regmap, AMG88XX_REG_RST, AMG88XX_RST_FLAG);
 if (ret)
  return ret;




 msleep(200);

 return 0;
}
