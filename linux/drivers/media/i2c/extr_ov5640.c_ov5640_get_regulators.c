
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ov5640_dev {TYPE_2__* supplies; TYPE_1__* i2c_client; } ;
struct TYPE_4__ {int supply; } ;
struct TYPE_3__ {int dev; } ;


 int OV5640_NUM_SUPPLIES ;
 int devm_regulator_bulk_get (int *,int,TYPE_2__*) ;
 int * ov5640_supply_name ;

__attribute__((used)) static int ov5640_get_regulators(struct ov5640_dev *sensor)
{
 int i;

 for (i = 0; i < OV5640_NUM_SUPPLIES; i++)
  sensor->supplies[i].supply = ov5640_supply_name[i];

 return devm_regulator_bulk_get(&sensor->i2c_client->dev,
           OV5640_NUM_SUPPLIES,
           sensor->supplies);
}
