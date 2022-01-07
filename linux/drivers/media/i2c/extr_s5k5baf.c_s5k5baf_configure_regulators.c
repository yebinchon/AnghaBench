
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5k5baf {TYPE_1__* supplies; int sd; } ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int supply; } ;


 int S5K5BAF_NUM_SUPPLIES ;
 int devm_regulator_bulk_get (int *,int,TYPE_1__*) ;
 int * s5k5baf_supply_names ;
 int v4l2_err (struct i2c_client*,char*) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int s5k5baf_configure_regulators(struct s5k5baf *state)
{
 struct i2c_client *c = v4l2_get_subdevdata(&state->sd);
 int ret;
 int i;

 for (i = 0; i < S5K5BAF_NUM_SUPPLIES; i++)
  state->supplies[i].supply = s5k5baf_supply_names[i];

 ret = devm_regulator_bulk_get(&c->dev, S5K5BAF_NUM_SUPPLIES,
          state->supplies);
 if (ret < 0)
  v4l2_err(c, "failed to get regulators\n");
 return ret;
}
