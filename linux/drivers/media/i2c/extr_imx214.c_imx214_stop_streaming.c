
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx214 {int dev; int regmap; } ;


 int dev_err (int ,char*,int) ;
 int regmap_write (int ,int,int ) ;

__attribute__((used)) static int imx214_stop_streaming(struct imx214 *imx214)
{
 int ret;

 ret = regmap_write(imx214->regmap, 0x100, 0);
 if (ret < 0)
  dev_err(imx214->dev, "could not sent stop table %d\n", ret);

 return ret;
}
