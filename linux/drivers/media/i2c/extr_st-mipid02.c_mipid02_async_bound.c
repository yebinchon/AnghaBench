
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int name; int entity; int fwnode; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int sd; } ;
struct TYPE_2__ {int entity; } ;
struct mipid02_dev {struct v4l2_subdev* s_subdev; TYPE_1__ sd; struct i2c_client* i2c_client; } ;
struct i2c_client {int dev; } ;


 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_LNK_FL_IMMUTABLE ;
 int MEDIA_PAD_FL_SOURCE ;
 int dev_dbg (int *,char*,struct v4l2_subdev*) ;
 int dev_err (int *,char*,int) ;
 int media_create_pad_link (int *,int,int *,int ,int) ;
 int media_entity_get_fwnode_pad (int *,int ,int ) ;
 struct mipid02_dev* to_mipid02_dev (int ) ;

__attribute__((used)) static int mipid02_async_bound(struct v4l2_async_notifier *notifier,
          struct v4l2_subdev *s_subdev,
          struct v4l2_async_subdev *asd)
{
 struct mipid02_dev *bridge = to_mipid02_dev(notifier->sd);
 struct i2c_client *client = bridge->i2c_client;
 int source_pad;
 int ret;

 dev_dbg(&client->dev, "sensor_async_bound call %p", s_subdev);

 source_pad = media_entity_get_fwnode_pad(&s_subdev->entity,
       s_subdev->fwnode,
       MEDIA_PAD_FL_SOURCE);
 if (source_pad < 0) {
  dev_err(&client->dev, "Couldn't find output pad for subdev %s\n",
   s_subdev->name);
  return source_pad;
 }

 ret = media_create_pad_link(&s_subdev->entity, source_pad,
        &bridge->sd.entity, 0,
        MEDIA_LNK_FL_ENABLED |
        MEDIA_LNK_FL_IMMUTABLE);
 if (ret) {
  dev_err(&client->dev, "Couldn't create media link %d", ret);
  return ret;
 }

 bridge->s_subdev = s_subdev;

 return 0;
}
