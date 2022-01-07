
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int curr_mode; } ;
struct sd {int bridge; int sensor; TYPE_1__ gspca_dev; int sif; } ;
struct cam {void* nmodes; void* cam_mode; } ;
struct gspca_dev {int usb_err; struct cam cam; } ;


 void* ARRAY_SIZE (void*) ;







 int EINVAL ;
 int OV519_R57_SNAPSHOT ;
 int OV6xx0_SID ;
 int OV7670_COM7_RESET ;
 int OV7670_R12_COM7 ;
 int OV7xx0_SID ;
 int OV8xx0_SID ;
 int OV_HIRES_SID ;
 int gspca_err (struct gspca_dev*,char*) ;
 int i2c_w (struct sd*,int ,int ) ;
 int i2c_w_mask (struct sd*,int,int,int) ;
 void* init_519_ov7660 ;
 scalar_t__ init_ov_sensor (struct sd*,int ) ;
 int msleep (int) ;
 void* norm_2610 ;
 void* norm_2610ae ;
 void* norm_3620b ;
 void* norm_6x20 ;
 void* norm_6x30 ;
 void* norm_7610 ;
 void* norm_7620 ;
 void* norm_7640 ;
 void* norm_7660 ;
 void* norm_7670 ;
 void* norm_8610 ;
 void* norm_9600 ;
 int ov511_configure (struct gspca_dev*) ;
 void* ov511_sif_mode ;
 int ov518_configure (struct gspca_dev*) ;
 void* ov518_sif_mode ;
 int ov519_configure (struct sd*) ;
 int ov519_set_fr (struct sd*) ;
 int ov519_set_mode (struct sd*) ;
 void* ov519_sif_mode ;
 int ov51x_led_control (struct sd*,int ) ;
 int ov51x_restart (struct sd*) ;
 int ov51x_stop (struct sd*) ;
 int ov6xx0_configure (struct sd*) ;
 int ov7xx0_configure (struct sd*) ;
 int ov8xx0_configure (struct sd*) ;
 int ov_hires_configure (struct sd*) ;
 int ovfx2_configure (struct sd*) ;
 void* ovfx2_ov2610_mode ;
 void* ovfx2_ov3610_mode ;
 void* ovfx2_ov9600_mode ;
 int reg_w (struct sd*,int ,int) ;
 int sd_reset_snapshot (struct gspca_dev*) ;
 int w9968cf_configure (struct sd*) ;
 int w9968cf_init (struct sd*) ;
 void* w9968cf_vga_mode ;
 int write_i2c_regvals (struct sd*,void*,void*) ;
 int write_regvals (struct sd*,void*,void*) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam = &gspca_dev->cam;

 switch (sd->bridge) {
 case 148:
 case 147:
  ov511_configure(gspca_dev);
  break;
 case 146:
 case 145:
  ov518_configure(gspca_dev);
  break;
 case 144:
  ov519_configure(sd);
  break;
 case 143:
  ovfx2_configure(sd);
  break;
 case 142:
  w9968cf_configure(sd);
  break;
 }




 sd->sensor = -1;


 if (init_ov_sensor(sd, OV7xx0_SID) >= 0) {
  ov7xx0_configure(sd);


 } else if (init_ov_sensor(sd, OV6xx0_SID) >= 0) {
  ov6xx0_configure(sd);


 } else if (init_ov_sensor(sd, OV8xx0_SID) >= 0) {
  ov8xx0_configure(sd);


 } else if (init_ov_sensor(sd, OV_HIRES_SID) >= 0) {
  ov_hires_configure(sd);
 } else {
  gspca_err(gspca_dev, "Can't determine sensor slave IDs\n");
  goto error;
 }

 if (sd->sensor < 0)
  goto error;

 ov51x_led_control(sd, 0);

 switch (sd->bridge) {
 case 148:
 case 147:
  if (sd->sif) {
   cam->cam_mode = ov511_sif_mode;
   cam->nmodes = ARRAY_SIZE(ov511_sif_mode);
  }
  break;
 case 146:
 case 145:
  if (sd->sif) {
   cam->cam_mode = ov518_sif_mode;
   cam->nmodes = ARRAY_SIZE(ov518_sif_mode);
  }
  break;
 case 144:
  if (sd->sif) {
   cam->cam_mode = ov519_sif_mode;
   cam->nmodes = ARRAY_SIZE(ov519_sif_mode);
  }
  break;
 case 143:
  switch (sd->sensor) {
  case 141:
  case 140:
   cam->cam_mode = ovfx2_ov2610_mode;
   cam->nmodes = ARRAY_SIZE(ovfx2_ov2610_mode);
   break;
  case 139:
   cam->cam_mode = ovfx2_ov3610_mode;
   cam->nmodes = ARRAY_SIZE(ovfx2_ov3610_mode);
   break;
  case 128:
   cam->cam_mode = ovfx2_ov9600_mode;
   cam->nmodes = ARRAY_SIZE(ovfx2_ov9600_mode);
   break;
  default:
   if (sd->sif) {
    cam->cam_mode = ov519_sif_mode;
    cam->nmodes = ARRAY_SIZE(ov519_sif_mode);
   }
   break;
  }
  break;
 case 142:
  if (sd->sif)
   cam->nmodes = ARRAY_SIZE(w9968cf_vga_mode) - 1;


  w9968cf_init(sd);
  break;
 }


 switch (sd->sensor) {
 case 141:
  write_i2c_regvals(sd, norm_2610, ARRAY_SIZE(norm_2610));


  i2c_w_mask(sd, 0x13, 0x27, 0x27);
  break;
 case 140:
  write_i2c_regvals(sd, norm_2610ae, ARRAY_SIZE(norm_2610ae));


  i2c_w_mask(sd, 0x13, 0x05, 0x05);
  break;
 case 139:
  write_i2c_regvals(sd, norm_3620b, ARRAY_SIZE(norm_3620b));


  i2c_w_mask(sd, 0x13, 0x27, 0x27);
  break;
 case 138:
  write_i2c_regvals(sd, norm_6x20, ARRAY_SIZE(norm_6x20));
  break;
 case 137:
 case 136:
  write_i2c_regvals(sd, norm_6x30, ARRAY_SIZE(norm_6x30));
  break;
 default:


  write_i2c_regvals(sd, norm_7610, ARRAY_SIZE(norm_7610));
  i2c_w_mask(sd, 0x0e, 0x00, 0x40);
  break;
 case 135:
 case 134:
  write_i2c_regvals(sd, norm_7620, ARRAY_SIZE(norm_7620));
  break;
 case 133:
 case 132:
  write_i2c_regvals(sd, norm_7640, ARRAY_SIZE(norm_7640));
  break;
 case 131:
  i2c_w(sd, OV7670_R12_COM7, OV7670_COM7_RESET);
  msleep(14);
  reg_w(sd, OV519_R57_SNAPSHOT, 0x23);
  write_regvals(sd, init_519_ov7660,
    ARRAY_SIZE(init_519_ov7660));
  write_i2c_regvals(sd, norm_7660, ARRAY_SIZE(norm_7660));
  sd->gspca_dev.curr_mode = 1;
  ov519_set_mode(sd);
  ov519_set_fr(sd);
  sd_reset_snapshot(gspca_dev);
  ov51x_restart(sd);
  ov51x_stop(sd);
  ov51x_led_control(sd, 0);
  break;
 case 130:
  write_i2c_regvals(sd, norm_7670, ARRAY_SIZE(norm_7670));
  break;
 case 129:
  write_i2c_regvals(sd, norm_8610, ARRAY_SIZE(norm_8610));
  break;
 case 128:
  write_i2c_regvals(sd, norm_9600, ARRAY_SIZE(norm_9600));



  break;
 }
 return gspca_dev->usb_err;
error:
 gspca_err(gspca_dev, "OV519 Config failed\n");
 return -EINVAL;
}
