
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tda1997x_state {TYPE_2__* supplies; TYPE_1__* client; } ;
struct TYPE_4__ {int supply; } ;
struct TYPE_3__ {int dev; } ;


 int TDA1997X_NUM_SUPPLIES ;
 int devm_regulator_bulk_get (int *,int,TYPE_2__*) ;
 int * tda1997x_supply_name ;

__attribute__((used)) static int tda1997x_get_regulators(struct tda1997x_state *state)
{
 int i;

 for (i = 0; i < TDA1997X_NUM_SUPPLIES; i++)
  state->supplies[i].supply = tda1997x_supply_name[i];

 return devm_regulator_bulk_get(&state->client->dev,
           TDA1997X_NUM_SUPPLIES,
           state->supplies);
}
