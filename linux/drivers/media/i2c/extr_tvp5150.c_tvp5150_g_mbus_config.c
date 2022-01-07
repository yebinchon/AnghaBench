
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_config {int flags; int type; } ;
struct tvp5150 {int mbus_type; } ;


 int V4L2_MBUS_DATA_ACTIVE_HIGH ;
 int V4L2_MBUS_FIELD_EVEN_LOW ;
 int V4L2_MBUS_MASTER ;
 int V4L2_MBUS_PCLK_SAMPLE_RISING ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp5150_g_mbus_config(struct v4l2_subdev *sd,
     struct v4l2_mbus_config *cfg)
{
 struct tvp5150 *decoder = to_tvp5150(sd);

 cfg->type = decoder->mbus_type;
 cfg->flags = V4L2_MBUS_MASTER | V4L2_MBUS_PCLK_SAMPLE_RISING
     | V4L2_MBUS_FIELD_EVEN_LOW | V4L2_MBUS_DATA_ACTIVE_HIGH;

 return 0;
}
