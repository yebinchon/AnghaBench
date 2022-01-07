
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ov5695 {TYPE_2__* supplies; TYPE_1__* client; } ;
struct TYPE_4__ {int supply; } ;
struct TYPE_3__ {int dev; } ;


 int OV5695_NUM_SUPPLIES ;
 int devm_regulator_bulk_get (int *,int,TYPE_2__*) ;
 int * ov5695_supply_names ;

__attribute__((used)) static int ov5695_configure_regulators(struct ov5695 *ov5695)
{
 int i;

 for (i = 0; i < OV5695_NUM_SUPPLIES; i++)
  ov5695->supplies[i].supply = ov5695_supply_names[i];

 return devm_regulator_bulk_get(&ov5695->client->dev,
           OV5695_NUM_SUPPLIES,
           ov5695->supplies);
}
