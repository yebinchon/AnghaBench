
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int ctrl_handler; } ;
struct adv76xx_platform_data {scalar_t__ default_input; int alt_gamma; int blank_data; int insert_av_codes; int replicate_av_codes; int inv_vs_pol; int inv_hs_pol; int inv_llc_pol; int dr_str_data; int dr_str_clk; int dr_str_sync; int hdmi_free_run_mode; int ain_sel; int output_bus_lsb_to_msb; int int1_config; scalar_t__ disable_cable_det_rst; scalar_t__ disable_pwrdnb; } ;
struct adv76xx_state {scalar_t__ source_pad; scalar_t__ selected_input; struct adv76xx_platform_data pdata; struct adv76xx_chip_info* info; } ;
struct adv76xx_chip_info {int fmt_change_digital_mask; int cable_det_mask; int (* setup_irqs ) (struct v4l2_subdev*) ;} ;


 scalar_t__ adv76xx_has_afe (struct adv76xx_state*) ;
 int adv76xx_setup_format (struct adv76xx_state*) ;
 int afe_write (struct v4l2_subdev*,int,int) ;
 int cp_write (struct v4l2_subdev*,int,int) ;
 int disable_input (struct v4l2_subdev*) ;
 int enable_input (struct v4l2_subdev*) ;
 int hdmi_write (struct v4l2_subdev*,int,int) ;
 int hdmi_write_clr_set (struct v4l2_subdev*,int,int,int) ;
 int io_write (struct v4l2_subdev*,int,int) ;
 int io_write_clr_set (struct v4l2_subdev*,int,int,int) ;
 int select_input (struct v4l2_subdev*) ;
 int stub1 (struct v4l2_subdev*) ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_setup (int ) ;

__attribute__((used)) static int adv76xx_core_init(struct v4l2_subdev *sd)
{
 struct adv76xx_state *state = to_state(sd);
 const struct adv76xx_chip_info *info = state->info;
 struct adv76xx_platform_data *pdata = &state->pdata;

 hdmi_write(sd, 0x48,
  (pdata->disable_pwrdnb ? 0x80 : 0) |
  (pdata->disable_cable_det_rst ? 0x40 : 0));

 disable_input(sd);

 if (pdata->default_input >= 0 &&
     pdata->default_input < state->source_pad) {
  state->selected_input = pdata->default_input;
  select_input(sd);
  enable_input(sd);
 }


 io_write(sd, 0x0c, 0x42);
 io_write(sd, 0x0b, 0x44);
 cp_write(sd, 0xcf, 0x01);


 io_write_clr_set(sd, 0x02, 0x0f, pdata->alt_gamma << 3);
 io_write_clr_set(sd, 0x05, 0x0e, pdata->blank_data << 3 |
   pdata->insert_av_codes << 2 |
   pdata->replicate_av_codes << 1);
 adv76xx_setup_format(state);

 cp_write(sd, 0x69, 0x30);


 io_write(sd, 0x06, 0xa0 | pdata->inv_vs_pol << 2 |
   pdata->inv_hs_pol << 1 | pdata->inv_llc_pol);


 io_write(sd, 0x14, 0x40 | pdata->dr_str_data << 4 |
    pdata->dr_str_clk << 2 |
    pdata->dr_str_sync);

 cp_write(sd, 0xba, (pdata->hdmi_free_run_mode << 1) | 0x01);
 cp_write(sd, 0xf3, 0xdc);
 cp_write(sd, 0xf9, 0x23);

 cp_write(sd, 0x45, 0x23);

 cp_write(sd, 0xc9, 0x2d);



 hdmi_write_clr_set(sd, 0x15, 0x03, 0x03);
 hdmi_write_clr_set(sd, 0x1a, 0x0e, 0x08);
 hdmi_write_clr_set(sd, 0x68, 0x06, 0x06);


 afe_write(sd, 0xb5, 0x01);

 if (adv76xx_has_afe(state)) {
  afe_write(sd, 0x02, pdata->ain_sel);
  io_write_clr_set(sd, 0x30, 1 << 4, pdata->output_bus_lsb_to_msb << 4);
 }


 io_write(sd, 0x40, 0xc0 | pdata->int1_config);
 io_write(sd, 0x46, 0x98);
 io_write(sd, 0x6e, info->fmt_change_digital_mask);
 io_write(sd, 0x73, info->cable_det_mask);
 info->setup_irqs(sd);

 return v4l2_ctrl_handler_setup(sd->ctrl_handler);
}
