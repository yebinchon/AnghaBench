
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_subdev {TYPE_2__* ctrl_handler; } ;
struct TYPE_7__ {int error; } ;
struct tda7432 {TYPE_2__ hdl; void* mute; void* bass; void* treble; void* balance; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; TYPE_1__* adapter; } ;
struct TYPE_6__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_CID_AUDIO_BALANCE ;
 int V4L2_CID_AUDIO_BASS ;
 int V4L2_CID_AUDIO_MUTE ;
 int V4L2_CID_AUDIO_TREBLE ;
 int V4L2_CID_AUDIO_VOLUME ;
 struct tda7432* devm_kzalloc (int *,int,int ) ;
 int loudness ;
 scalar_t__ maxvol ;
 int tda7432_ctrl_ops ;
 int tda7432_ops ;
 int tda7432_set (struct v4l2_subdev*) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_2__*) ;
 void* v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int,int,int,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l2_warn (struct v4l2_subdev*,char*) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int tda7432_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct tda7432 *t;
 struct v4l2_subdev *sd;

 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr << 1, client->adapter->name);

 t = devm_kzalloc(&client->dev, sizeof(*t), GFP_KERNEL);
 if (!t)
  return -ENOMEM;
 sd = &t->sd;
 v4l2_i2c_subdev_init(sd, client, &tda7432_ops);
 v4l2_ctrl_handler_init(&t->hdl, 5);
 v4l2_ctrl_new_std(&t->hdl, &tda7432_ctrl_ops,
  V4L2_CID_AUDIO_VOLUME, 0, maxvol ? 0x68 : 0x4f, 1, maxvol ? 0x5d : 0x47);
 t->mute = v4l2_ctrl_new_std(&t->hdl, &tda7432_ctrl_ops,
  V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
 t->balance = v4l2_ctrl_new_std(&t->hdl, &tda7432_ctrl_ops,
  V4L2_CID_AUDIO_BALANCE, -31, 31, 1, 0);
 t->bass = v4l2_ctrl_new_std(&t->hdl, &tda7432_ctrl_ops,
  V4L2_CID_AUDIO_BASS, 0, 14, 1, 7);
 t->treble = v4l2_ctrl_new_std(&t->hdl, &tda7432_ctrl_ops,
  V4L2_CID_AUDIO_TREBLE, 0, 14, 1, 7);
 sd->ctrl_handler = &t->hdl;
 if (t->hdl.error) {
  int err = t->hdl.error;

  v4l2_ctrl_handler_free(&t->hdl);
  return err;
 }
 v4l2_ctrl_cluster(2, &t->bass);
 v4l2_ctrl_cluster(2, &t->mute);
 v4l2_ctrl_handler_setup(&t->hdl);
 if (loudness < 0 || loudness > 15) {
  v4l2_warn(sd, "loudness parameter must be between 0 and 15\n");
  if (loudness < 0)
   loudness = 0;
  if (loudness > 15)
   loudness = 15;
 }

 tda7432_set(sd);
 return 0;
}
