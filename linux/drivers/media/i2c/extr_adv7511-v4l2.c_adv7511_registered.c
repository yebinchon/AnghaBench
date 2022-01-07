
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dev; } ;
struct adv7511_state {int cec_adap; } ;


 int cec_delete_adapter (int ) ;
 int cec_register_adapter (int ,int *) ;
 struct adv7511_state* get_adv7511_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7511_registered(struct v4l2_subdev *sd)
{
 struct adv7511_state *state = get_adv7511_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int err;

 err = cec_register_adapter(state->cec_adap, &client->dev);
 if (err)
  cec_delete_adapter(state->cec_adap);
 return err;
}
