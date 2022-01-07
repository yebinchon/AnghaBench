
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera {int dev; int regmap; } ;


 int MADERA_SOFTWARE_RESET ;
 int dev_err (int ,char*,int) ;
 int regmap_write (int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int madera_soft_reset(struct madera *madera)
{
 int ret;

 ret = regmap_write(madera->regmap, MADERA_SOFTWARE_RESET, 0);
 if (ret != 0) {
  dev_err(madera->dev, "Failed to soft reset device: %d\n", ret);
  return ret;
 }


 usleep_range(1000, 2000);

 return 0;
}
