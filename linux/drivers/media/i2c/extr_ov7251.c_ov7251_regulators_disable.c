
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov7251 {int dev; int io_regulator; int analog_regulator; int core_regulator; } ;


 int dev_err (int ,char*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void ov7251_regulators_disable(struct ov7251 *ov7251)
{
 int ret;

 ret = regulator_disable(ov7251->core_regulator);
 if (ret < 0)
  dev_err(ov7251->dev, "core regulator disable failed\n");

 ret = regulator_disable(ov7251->analog_regulator);
 if (ret < 0)
  dev_err(ov7251->dev, "analog regulator disable failed\n");

 ret = regulator_disable(ov7251->io_regulator);
 if (ret < 0)
  dev_err(ov7251->dev, "io regulator disable failed\n");
}
