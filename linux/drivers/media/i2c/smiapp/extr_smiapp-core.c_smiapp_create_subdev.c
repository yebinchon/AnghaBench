
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int * ops; } ;
struct TYPE_14__ {int * dev; int owner; int * internal_ops; TYPE_4__ entity; int flags; } ;
struct TYPE_11__ {int height; int width; } ;
struct TYPE_15__ {int height; int width; } ;
struct smiapp_subdev {unsigned short npads; unsigned short source_pad; size_t sink_pad; TYPE_5__ sd; TYPE_3__* pads; TYPE_2__ compose; TYPE_2__* crop; TYPE_9__ sink_fmt; struct smiapp_sensor* sensor; } ;
struct TYPE_10__ {int name; } ;
struct smiapp_sensor {struct smiapp_subdev* src; struct smiapp_subdev* pixel_array; TYPE_1__ minfo; } ;
struct i2c_client {int dev; } ;
struct TYPE_12__ {int flags; } ;


 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int THIS_MODULE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int smiapp_entity_ops ;
 int smiapp_get_native_size (struct smiapp_subdev*,TYPE_9__*) ;
 int smiapp_internal_ops ;
 int smiapp_ops ;
 struct i2c_client* v4l2_get_subdevdata (TYPE_5__*) ;
 int v4l2_i2c_subdev_set_name (TYPE_5__*,struct i2c_client*,int ,char const*) ;
 int v4l2_set_subdevdata (TYPE_5__*,struct i2c_client*) ;
 int v4l2_subdev_init (TYPE_5__*,int *) ;

__attribute__((used)) static void smiapp_create_subdev(struct smiapp_sensor *sensor,
     struct smiapp_subdev *ssd, const char *name,
     unsigned short num_pads)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);

 if (!ssd)
  return;

 if (ssd != sensor->src)
  v4l2_subdev_init(&ssd->sd, &smiapp_ops);

 ssd->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 ssd->sensor = sensor;

 ssd->npads = num_pads;
 ssd->source_pad = num_pads - 1;

 v4l2_i2c_subdev_set_name(&ssd->sd, client, sensor->minfo.name, name);

 smiapp_get_native_size(ssd, &ssd->sink_fmt);

 ssd->compose.width = ssd->sink_fmt.width;
 ssd->compose.height = ssd->sink_fmt.height;
 ssd->crop[ssd->source_pad] = ssd->compose;
 ssd->pads[ssd->source_pad].flags = MEDIA_PAD_FL_SOURCE;
 if (ssd != sensor->pixel_array) {
  ssd->crop[ssd->sink_pad] = ssd->compose;
  ssd->pads[ssd->sink_pad].flags = MEDIA_PAD_FL_SINK;
 }

 ssd->sd.entity.ops = &smiapp_entity_ops;

 if (ssd == sensor->src)
  return;

 ssd->sd.internal_ops = &smiapp_internal_ops;
 ssd->sd.owner = THIS_MODULE;
 ssd->sd.dev = &client->dev;
 v4l2_set_subdevdata(&ssd->sd, client);
}
