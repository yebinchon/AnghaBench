
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int v4l2_dev; } ;
struct TYPE_3__ {int entity; int name; } ;
struct TYPE_4__ {int entity; } ;
struct s5c73m3 {TYPE_1__ oif_sd; TYPE_2__ sensor_sd; } ;


 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_LNK_FL_IMMUTABLE ;
 int OIF_ISP_PAD ;
 int OIF_JPEG_PAD ;
 int S5C73M3_ISP_PAD ;
 int S5C73M3_JPEG_PAD ;
 int media_create_pad_link (int *,int ,int *,int ,int) ;
 struct s5c73m3* oif_sd_to_s5c73m3 (struct v4l2_subdev*) ;
 int v4l2_device_register_subdev (int ,TYPE_2__*) ;
 int v4l2_err (int ,char*,int ) ;

__attribute__((used)) static int s5c73m3_oif_registered(struct v4l2_subdev *sd)
{
 struct s5c73m3 *state = oif_sd_to_s5c73m3(sd);
 int ret;

 ret = v4l2_device_register_subdev(sd->v4l2_dev, &state->sensor_sd);
 if (ret) {
  v4l2_err(sd->v4l2_dev, "Failed to register %s\n",
       state->oif_sd.name);
  return ret;
 }

 ret = media_create_pad_link(&state->sensor_sd.entity,
   S5C73M3_ISP_PAD, &state->oif_sd.entity, OIF_ISP_PAD,
   MEDIA_LNK_FL_IMMUTABLE | MEDIA_LNK_FL_ENABLED);

 ret = media_create_pad_link(&state->sensor_sd.entity,
   S5C73M3_JPEG_PAD, &state->oif_sd.entity, OIF_JPEG_PAD,
   MEDIA_LNK_FL_IMMUTABLE | MEDIA_LNK_FL_ENABLED);

 return ret;
}
