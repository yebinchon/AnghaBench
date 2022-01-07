
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct msp_state {int detected_std; int std; } ;
struct i2c_client {int dev; } ;


 int dev_dbg_lvl (int *,int,int ,char*,int ,int ) ;
 int msp_debug ;
 int msp_standard_std_name (int ) ;
 struct msp_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int msp_querystd(struct v4l2_subdev *sd, v4l2_std_id *id)
{
 struct msp_state *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 *id &= state->detected_std;

 dev_dbg_lvl(&client->dev, 2, msp_debug,
  "detected standard: %s(0x%08Lx)\n",
  msp_standard_std_name(state->std), state->detected_std);

 return 0;
}
