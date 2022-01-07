
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov7251 {int io_regulator; int analog_regulator; int dev; int core_regulator; } ;


 int dev_err (int ,char*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int ov7251_regulators_enable(struct ov7251 *ov7251)
{
 int ret;





 ret = regulator_enable(ov7251->io_regulator);
 if (ret < 0) {
  dev_err(ov7251->dev, "set io voltage failed\n");
  return ret;
 }

 ret = regulator_enable(ov7251->analog_regulator);
 if (ret) {
  dev_err(ov7251->dev, "set analog voltage failed\n");
  goto err_disable_io;
 }

 ret = regulator_enable(ov7251->core_regulator);
 if (ret) {
  dev_err(ov7251->dev, "set core voltage failed\n");
  goto err_disable_analog;
 }

 return 0;

err_disable_analog:
 regulator_disable(ov7251->analog_regulator);

err_disable_io:
 regulator_disable(ov7251->io_regulator);

 return ret;
}
