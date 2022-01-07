
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings {int dummy; } ;
struct TYPE_2__ {struct adv7842_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adv7842_state {struct v4l2_dv_timings timings; int vid_std_select; } ;
struct adv7842_platform_data {int sd_ram_ddr; int sd_ram_size; } ;


 int ADV7842_EDID_PORT_A ;
 int ADV7842_EDID_PORT_B ;
 int EINVAL ;
 int ENODEV ;
 int adv7842_core_init (struct v4l2_subdev*) ;
 int adv7842_ddr_ram_test (struct v4l2_subdev*) ;
 int adv7842_rewrite_i2c_addresses (struct v4l2_subdev*,struct adv7842_platform_data*) ;
 int adv7842_s_dv_timings (struct v4l2_subdev*,struct v4l2_dv_timings*) ;
 int disable_input (struct v4l2_subdev*) ;
 int edid_write_hdmi_segment (struct v4l2_subdev*,int ) ;
 int edid_write_vga_segment (struct v4l2_subdev*) ;
 int enable_input (struct v4l2_subdev*) ;
 int main_reset (struct v4l2_subdev*) ;
 int memset (struct v4l2_dv_timings*,int ,int) ;
 int select_input (struct v4l2_subdev*,int ) ;
 struct adv7842_state* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_info (struct v4l2_subdev*,char*) ;

__attribute__((used)) static int adv7842_command_ram_test(struct v4l2_subdev *sd)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct adv7842_state *state = to_state(sd);
 struct adv7842_platform_data *pdata = client->dev.platform_data;
 struct v4l2_dv_timings timings;
 int ret = 0;

 if (!pdata)
  return -ENODEV;

 if (!pdata->sd_ram_size || !pdata->sd_ram_ddr) {
  v4l2_info(sd, "no sdram or no ddr sdram\n");
  return -EINVAL;
 }

 main_reset(sd);

 adv7842_rewrite_i2c_addresses(sd, pdata);


 ret = adv7842_ddr_ram_test(sd);

 main_reset(sd);

 adv7842_rewrite_i2c_addresses(sd, pdata);


 adv7842_core_init(sd);

 disable_input(sd);

 select_input(sd, state->vid_std_select);

 enable_input(sd);

 edid_write_vga_segment(sd);
 edid_write_hdmi_segment(sd, ADV7842_EDID_PORT_A);
 edid_write_hdmi_segment(sd, ADV7842_EDID_PORT_B);

 timings = state->timings;

 memset(&state->timings, 0, sizeof(struct v4l2_dv_timings));

 adv7842_s_dv_timings(sd, &timings);

 return ret;
}
