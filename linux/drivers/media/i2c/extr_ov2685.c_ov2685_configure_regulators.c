
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ov2685 {TYPE_2__* supplies; TYPE_1__* client; } ;
struct TYPE_4__ {int supply; } ;
struct TYPE_3__ {int dev; } ;


 int OV2685_NUM_SUPPLIES ;
 int devm_regulator_bulk_get (int *,int,TYPE_2__*) ;
 int * ov2685_supply_names ;

__attribute__((used)) static int ov2685_configure_regulators(struct ov2685 *ov2685)
{
 int i;

 for (i = 0; i < OV2685_NUM_SUPPLIES; i++)
  ov2685->supplies[i].supply = ov2685_supply_names[i];

 return devm_regulator_bulk_get(&ov2685->client->dev,
           OV2685_NUM_SUPPLIES,
           ov2685->supplies);
}
