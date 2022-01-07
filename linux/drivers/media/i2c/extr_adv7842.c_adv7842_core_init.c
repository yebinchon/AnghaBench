
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int ctrl_handler; } ;
struct adv7842_platform_data {int alt_gamma; int blank_data; int insert_av_codes; int replicate_av_codes; int dr_str_data; int dr_str_clk; int dr_str_sync; int hdmi_free_run_enable; int hdmi_free_run_mode; int sdp_free_run_force; int sdp_free_run_cbar_en; int sdp_free_run_man_col_en; int sdp_free_run_auto; int ain_sel; int output_bus_lsb_to_msb; int sd_ram_size; int llc_dll_phase; scalar_t__ hpa_auto; int vid_std_select; scalar_t__ sd_ram_ddr; int sdp_csc_coeff; scalar_t__ disable_cable_det_rst; scalar_t__ disable_pwrdnb; } ;
struct adv7842_state {struct adv7842_platform_data pdata; } ;


 int adv7842_irq_enable (struct v4l2_subdev*,int) ;
 int adv7842_setup_format (struct adv7842_state*) ;
 int afe_write (struct v4l2_subdev*,int,int) ;
 int cp_write (struct v4l2_subdev*,int,int) ;
 int cp_write_and_or (struct v4l2_subdev*,int,int,int) ;
 int disable_input (struct v4l2_subdev*) ;
 int enable_input (struct v4l2_subdev*) ;
 int hdmi_write (struct v4l2_subdev*,int,int) ;
 int hdmi_write_and_or (struct v4l2_subdev*,int,int,int) ;
 int io_write (struct v4l2_subdev*,int,int) ;
 int io_write_and_or (struct v4l2_subdev*,int,int,int) ;
 int rep_write_and_or (struct v4l2_subdev*,int,int,int) ;
 int sdp_csc_coeff (struct v4l2_subdev*,int *) ;
 int sdp_io_write (struct v4l2_subdev*,int,int) ;
 int sdp_write (struct v4l2_subdev*,int,int) ;
 int sdp_write_and_or (struct v4l2_subdev*,int,int,int) ;
 int select_input (struct v4l2_subdev*,int ) ;
 struct adv7842_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_setup (int ) ;

__attribute__((used)) static int adv7842_core_init(struct v4l2_subdev *sd)
{
 struct adv7842_state *state = to_state(sd);
 struct adv7842_platform_data *pdata = &state->pdata;
 hdmi_write(sd, 0x48,
     (pdata->disable_pwrdnb ? 0x80 : 0) |
     (pdata->disable_cable_det_rst ? 0x40 : 0));

 disable_input(sd);





 rep_write_and_or(sd, 0x77, 0xd3, 0x20);


 io_write(sd, 0x0c, 0x42);
 io_write(sd, 0x15, 0x80);


 io_write(sd, 0x02, 0xf0 | pdata->alt_gamma << 3);
 io_write_and_or(sd, 0x05, 0xf0, pdata->blank_data << 3 |
   pdata->insert_av_codes << 2 |
   pdata->replicate_av_codes << 1);
 adv7842_setup_format(state);


 hdmi_write_and_or(sd, 0x1a, 0xf1, 0x08);


 io_write_and_or(sd, 0x14, 0xc0,
   pdata->dr_str_data << 4 |
   pdata->dr_str_clk << 2 |
   pdata->dr_str_sync);


 cp_write_and_or(sd, 0xba, 0xfc, pdata->hdmi_free_run_enable |
     (pdata->hdmi_free_run_mode << 1));


 sdp_write_and_or(sd, 0xdd, 0xf0, pdata->sdp_free_run_force |
      (pdata->sdp_free_run_cbar_en << 1) |
      (pdata->sdp_free_run_man_col_en << 2) |
      (pdata->sdp_free_run_auto << 3));


 cp_write(sd, 0x69, 0x14);
 io_write(sd, 0x06, 0xa6);
 cp_write(sd, 0xf3, 0xdc);
 afe_write(sd, 0xb5, 0x01);

 afe_write(sd, 0x02, pdata->ain_sel);
 io_write_and_or(sd, 0x30, ~(1 << 4), pdata->output_bus_lsb_to_msb << 4);

 sdp_csc_coeff(sd, &pdata->sdp_csc_coeff);


 if (pdata->sd_ram_size >= 128) {
  sdp_write(sd, 0x12, 0x0d);
  if (pdata->sd_ram_ddr) {

   sdp_io_write(sd, 0x6f, 0x00);
   sdp_io_write(sd, 0x75, 0x0a);
   sdp_io_write(sd, 0x7a, 0xa5);
   sdp_io_write(sd, 0x7b, 0x8f);
   sdp_io_write(sd, 0x60, 0x01);
  } else {
   sdp_io_write(sd, 0x75, 0x0a);
   sdp_io_write(sd, 0x74, 0x00);
   sdp_io_write(sd, 0x79, 0x33);

   sdp_io_write(sd, 0x6f, 0x01);
   sdp_io_write(sd, 0x7a, 0xa5);
   sdp_io_write(sd, 0x7b, 0x8f);
   sdp_io_write(sd, 0x60, 0x01);
  }
 } else {




  sdp_io_write(sd, 0x29, 0x10);
 }

 select_input(sd, pdata->vid_std_select);

 enable_input(sd);

 if (pdata->hpa_auto) {

  hdmi_write(sd, 0x69, 0x5c);
 } else {

  hdmi_write(sd, 0x69, 0xa3);

  io_write_and_or(sd, 0x20, 0xcf, 0x00);
 }


 io_write(sd, 0x19, 0x80 | pdata->llc_dll_phase);
 io_write(sd, 0x33, 0x40);


 io_write(sd, 0x40, 0xf2);

 adv7842_irq_enable(sd, 1);

 return v4l2_ctrl_handler_setup(sd->ctrl_handler);
}
