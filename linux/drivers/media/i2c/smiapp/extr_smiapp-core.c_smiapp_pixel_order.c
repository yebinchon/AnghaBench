
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct smiapp_sensor {int hvflip_inv_mask; int default_pixel_order; TYPE_3__* vflip; TYPE_2__* hflip; TYPE_1__* src; } ;
struct i2c_client {int dev; } ;
struct TYPE_6__ {scalar_t__ val; } ;
struct TYPE_5__ {scalar_t__ val; } ;
struct TYPE_4__ {int sd; } ;


 int SMIAPP_IMAGE_ORIENTATION_HFLIP ;
 int SMIAPP_IMAGE_ORIENTATION_VFLIP ;
 int dev_dbg (int *,char*,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static u32 smiapp_pixel_order(struct smiapp_sensor *sensor)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 int flip = 0;

 if (sensor->hflip) {
  if (sensor->hflip->val)
   flip |= SMIAPP_IMAGE_ORIENTATION_HFLIP;

  if (sensor->vflip->val)
   flip |= SMIAPP_IMAGE_ORIENTATION_VFLIP;
 }

 flip ^= sensor->hvflip_inv_mask;

 dev_dbg(&client->dev, "flip %d\n", flip);
 return sensor->default_pixel_order ^ flip;
}
