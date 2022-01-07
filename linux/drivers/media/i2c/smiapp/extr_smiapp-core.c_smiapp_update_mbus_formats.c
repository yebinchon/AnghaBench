
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smiapp_sensor {unsigned int mbus_frame_fmts; unsigned int default_mbus_frame_fmts; int * internal_csi_format; int * csi_format; TYPE_1__* src; } ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int sd; } ;


 scalar_t__ ARRAY_SIZE (int *) ;
 int BUG_ON (int) ;
 int dev_dbg (int *,char*,int ) ;
 scalar_t__ max (unsigned int,unsigned int) ;
 int * pixel_order_str ;
 int * smiapp_csi_data_formats ;
 unsigned int smiapp_pixel_order (struct smiapp_sensor*) ;
 int to_csi_format_idx (int *) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static void smiapp_update_mbus_formats(struct smiapp_sensor *sensor)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 unsigned int csi_format_idx =
  to_csi_format_idx(sensor->csi_format) & ~3;
 unsigned int internal_csi_format_idx =
  to_csi_format_idx(sensor->internal_csi_format) & ~3;
 unsigned int pixel_order = smiapp_pixel_order(sensor);

 sensor->mbus_frame_fmts =
  sensor->default_mbus_frame_fmts << pixel_order;
 sensor->csi_format =
  &smiapp_csi_data_formats[csi_format_idx + pixel_order];
 sensor->internal_csi_format =
  &smiapp_csi_data_formats[internal_csi_format_idx
      + pixel_order];

 BUG_ON(max(internal_csi_format_idx, csi_format_idx) + pixel_order
        >= ARRAY_SIZE(smiapp_csi_data_formats));

 dev_dbg(&client->dev, "new pixel order %s\n",
  pixel_order_str[pixel_order]);
}
