
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_config {int flags; int type; } ;


 int V4L2_MBUS_DATA_ACTIVE_HIGH ;
 int V4L2_MBUS_HSYNC_ACTIVE_HIGH ;
 int V4L2_MBUS_MASTER ;
 int V4L2_MBUS_PARALLEL ;
 int V4L2_MBUS_PCLK_SAMPLE_RISING ;
 int V4L2_MBUS_VSYNC_ACTIVE_HIGH ;

__attribute__((used)) static int ov9640_g_mbus_config(struct v4l2_subdev *sd,
    struct v4l2_mbus_config *cfg)
{
 cfg->flags = V4L2_MBUS_PCLK_SAMPLE_RISING | V4L2_MBUS_MASTER |
  V4L2_MBUS_VSYNC_ACTIVE_HIGH | V4L2_MBUS_HSYNC_ACTIVE_HIGH |
  V4L2_MBUS_DATA_ACTIVE_HIGH;
 cfg->type = V4L2_MBUS_PARALLEL;

 return 0;
}
