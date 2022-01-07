
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int entity; } ;
struct smiapp_subdev {TYPE_3__ sd; int pads; int npads; } ;
struct smiapp_sensor {TYPE_1__* src; } ;
struct i2c_client {int dev; } ;
struct TYPE_6__ {int v4l2_dev; } ;
struct TYPE_5__ {TYPE_2__ sd; } ;


 int dev_err (int *,char*) ;
 int media_create_pad_link (int *,int ,int *,int ,int ) ;
 int media_entity_pads_init (int *,int ,int ) ;
 int v4l2_device_register_subdev (int ,TYPE_3__*) ;
 int v4l2_device_unregister_subdev (TYPE_3__*) ;
 struct i2c_client* v4l2_get_subdevdata (TYPE_2__*) ;

__attribute__((used)) static int smiapp_register_subdev(struct smiapp_sensor *sensor,
      struct smiapp_subdev *ssd,
      struct smiapp_subdev *sink_ssd,
      u16 source_pad, u16 sink_pad, u32 link_flags)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 int rval;

 if (!sink_ssd)
  return 0;

 rval = media_entity_pads_init(&ssd->sd.entity,
          ssd->npads, ssd->pads);
 if (rval) {
  dev_err(&client->dev,
   "media_entity_pads_init failed\n");
  return rval;
 }

 rval = v4l2_device_register_subdev(sensor->src->sd.v4l2_dev,
        &ssd->sd);
 if (rval) {
  dev_err(&client->dev,
   "v4l2_device_register_subdev failed\n");
  return rval;
 }

 rval = media_create_pad_link(&ssd->sd.entity, source_pad,
         &sink_ssd->sd.entity, sink_pad,
         link_flags);
 if (rval) {
  dev_err(&client->dev,
   "media_create_pad_link failed\n");
  v4l2_device_unregister_subdev(&ssd->sd);
  return rval;
 }

 return 0;
}
