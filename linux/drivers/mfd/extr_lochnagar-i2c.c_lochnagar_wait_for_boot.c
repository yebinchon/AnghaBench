
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int ETIMEDOUT ;
 int LOCHNAGAR_BOOT_DELAY_MS ;
 int LOCHNAGAR_BOOT_RETRIES ;
 int LOCHNAGAR_SOFTWARE_RESET ;
 int msleep (int ) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int lochnagar_wait_for_boot(struct regmap *regmap, unsigned int *id)
{
 int i, ret;

 for (i = 0; i < LOCHNAGAR_BOOT_RETRIES; ++i) {
  msleep(LOCHNAGAR_BOOT_DELAY_MS);


  ret = regmap_read(regmap, LOCHNAGAR_SOFTWARE_RESET, id);
  if (!ret)
   return ret;
 }

 return -ETIMEDOUT;
}
