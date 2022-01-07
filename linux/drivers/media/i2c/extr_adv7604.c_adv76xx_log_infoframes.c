
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union hdmi_infoframe {int dummy; } hdmi_infoframe ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int KERN_INFO ;
 int adv76xx_cri ;
 scalar_t__ adv76xx_read_infoframe (struct v4l2_subdev*,int,union hdmi_infoframe*) ;
 int hdmi_infoframe_log (int ,int *,union hdmi_infoframe*) ;
 int is_hdmi (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_info (struct v4l2_subdev*,char*) ;

__attribute__((used)) static void adv76xx_log_infoframes(struct v4l2_subdev *sd)
{
 int i;

 if (!is_hdmi(sd)) {
  v4l2_info(sd, "receive DVI-D signal, no infoframes\n");
  return;
 }

 for (i = 0; i < ARRAY_SIZE(adv76xx_cri); i++) {
  union hdmi_infoframe frame;
  struct i2c_client *client = v4l2_get_subdevdata(sd);

  if (adv76xx_read_infoframe(sd, i, &frame))
   return;
  hdmi_infoframe_log(KERN_INFO, &client->dev, &frame);
 }
}
