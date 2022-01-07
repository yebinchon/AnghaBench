
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct ml86v7667_priv {int std; int sd; } ;
struct i2c_client {int dummy; } ;


 int MRA_INPUT_MODE_MASK ;
 int MRA_NTSC_BT601 ;
 int MRA_PAL_BT601 ;
 int MRA_REG ;
 int V4L2_STD_525_60 ;
 int ml86v7667_mask_set (struct i2c_client*,int ,int ,int ) ;
 struct ml86v7667_priv* to_ml86v7667 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int ml86v7667_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct ml86v7667_priv *priv = to_ml86v7667(sd);
 struct i2c_client *client = v4l2_get_subdevdata(&priv->sd);
 int ret;
 u8 mode;


 mode = std & V4L2_STD_525_60 ? MRA_NTSC_BT601 : MRA_PAL_BT601;
 ret = ml86v7667_mask_set(client, MRA_REG, MRA_INPUT_MODE_MASK, mode);
 if (ret < 0)
  return ret;

 priv->std = std;

 return 0;
}
