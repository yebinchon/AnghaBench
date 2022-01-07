
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ov2680_dev {TYPE_2__* supplies; TYPE_1__* i2c_client; } ;
struct TYPE_4__ {int supply; } ;
struct TYPE_3__ {int dev; } ;


 int OV2680_NUM_SUPPLIES ;
 int devm_regulator_bulk_get (int *,int,TYPE_2__*) ;
 int * ov2680_supply_name ;

__attribute__((used)) static int ov2680_get_regulators(struct ov2680_dev *sensor)
{
 int i;

 for (i = 0; i < OV2680_NUM_SUPPLIES; i++)
  sensor->supplies[i].supply = ov2680_supply_name[i];

 return devm_regulator_bulk_get(&sensor->i2c_client->dev,
           OV2680_NUM_SUPPLIES,
           sensor->supplies);
}
