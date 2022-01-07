
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rk808 {int regmap; } ;
struct TYPE_3__ {int dev; } ;


 int RK805_GPIO_IO_POL_REG ;
 int SHUTDOWN_FUN ;
 int SLP_SD_MSK ;
 int dev_err (int *,char*) ;
 struct rk808* i2c_get_clientdata (TYPE_1__*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 TYPE_1__* rk808_i2c_client ;

__attribute__((used)) static void rk805_device_shutdown_prepare(void)
{
 int ret;
 struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);

 if (!rk808)
  return;

 ret = regmap_update_bits(rk808->regmap,
     RK805_GPIO_IO_POL_REG,
     SLP_SD_MSK, SHUTDOWN_FUN);
 if (ret)
  dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
}
