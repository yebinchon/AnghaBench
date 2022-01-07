
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mipid02_dev {TYPE_2__* supplies; TYPE_1__* i2c_client; } ;
struct TYPE_4__ {int supply; } ;
struct TYPE_3__ {int dev; } ;


 unsigned int MIPID02_NUM_SUPPLIES ;
 int devm_regulator_bulk_get (int *,unsigned int,TYPE_2__*) ;
 int * mipid02_supply_name ;

__attribute__((used)) static int mipid02_get_regulators(struct mipid02_dev *bridge)
{
 unsigned int i;

 for (i = 0; i < MIPID02_NUM_SUPPLIES; i++)
  bridge->supplies[i].supply = mipid02_supply_name[i];

 return devm_regulator_bulk_get(&bridge->i2c_client->dev,
           MIPID02_NUM_SUPPLIES,
           bridge->supplies);
}
