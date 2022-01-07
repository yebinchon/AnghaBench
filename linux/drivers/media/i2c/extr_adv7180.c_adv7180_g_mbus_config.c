
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_config {int flags; int type; } ;
struct adv7180_state {TYPE_1__* chip_info; } ;
struct TYPE_2__ {int flags; } ;


 int ADV7180_FLAG_MIPI_CSI2 ;
 int V4L2_MBUS_BT656 ;
 int V4L2_MBUS_CSI2_1_LANE ;
 int V4L2_MBUS_CSI2_CHANNEL_0 ;
 int V4L2_MBUS_CSI2_CONTINUOUS_CLOCK ;
 int V4L2_MBUS_CSI2_DPHY ;
 int V4L2_MBUS_DATA_ACTIVE_HIGH ;
 int V4L2_MBUS_MASTER ;
 int V4L2_MBUS_PCLK_SAMPLE_RISING ;
 struct adv7180_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7180_g_mbus_config(struct v4l2_subdev *sd,
     struct v4l2_mbus_config *cfg)
{
 struct adv7180_state *state = to_state(sd);

 if (state->chip_info->flags & ADV7180_FLAG_MIPI_CSI2) {
  cfg->type = V4L2_MBUS_CSI2_DPHY;
  cfg->flags = V4L2_MBUS_CSI2_1_LANE |
    V4L2_MBUS_CSI2_CHANNEL_0 |
    V4L2_MBUS_CSI2_CONTINUOUS_CLOCK;
 } else {




  cfg->flags = V4L2_MBUS_MASTER | V4L2_MBUS_PCLK_SAMPLE_RISING |
     V4L2_MBUS_DATA_ACTIVE_HIGH;
  cfg->type = V4L2_MBUS_BT656;
 }

 return 0;
}
