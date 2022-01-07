
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx214 {TYPE_1__* supplies; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int supply; } ;


 unsigned int IMX214_NUM_SUPPLIES ;
 int devm_regulator_bulk_get (struct device*,unsigned int,TYPE_1__*) ;
 int * imx214_supply_name ;

__attribute__((used)) static int imx214_get_regulators(struct device *dev, struct imx214 *imx214)
{
 unsigned int i;

 for (i = 0; i < IMX214_NUM_SUPPLIES; i++)
  imx214->supplies[i].supply = imx214_supply_name[i];

 return devm_regulator_bulk_get(dev, IMX214_NUM_SUPPLIES,
           imx214->supplies);
}
