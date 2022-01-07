
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; TYPE_2__ cam; } ;
struct sd {int sensor; int sensor_width; int sensor_height; struct gspca_dev gspca_dev; } ;
struct TYPE_3__ {int priv; } ;
 int i2c_w (struct sd*,int,int) ;
 int mode_init_ov_sensor_regs (struct sd*) ;
 int ov519_set_fr (struct sd*) ;
 int ov519_set_mode (struct sd*) ;

__attribute__((used)) static void set_ov_sensor_window(struct sd *sd)
{
 struct gspca_dev *gspca_dev;
 int qvga, crop;
 int hwsbase, hwebase, vwsbase, vwebase, hwscale, vwscale;


 switch (sd->sensor) {
 case 143:
 case 142:
 case 141:
 case 131:
 case 128:
  mode_init_ov_sensor_regs(sd);
  return;
 case 132:
  ov519_set_mode(sd);
  ov519_set_fr(sd);
  return;
 }

 gspca_dev = &sd->gspca_dev;
 qvga = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv & 1;
 crop = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv & 2;



 switch (sd->sensor) {
 case 129:
  hwsbase = 0x1e;
  hwebase = 0x1e;
  vwsbase = 0x02;
  vwebase = 0x02;
  break;
 case 137:
 case 130:
  hwsbase = 0x38;
  hwebase = 0x3a;
  vwsbase = vwebase = 0x05;
  break;
 case 140:
 case 139:
 case 138:
  hwsbase = 0x38;
  hwebase = 0x3a;
  vwsbase = 0x05;
  vwebase = 0x06;
  if (sd->sensor == 138 && qvga)

   hwsbase++;
  if (crop) {
   hwsbase += 8;
   hwebase += 8;
   vwsbase += 11;
   vwebase += 11;
  }
  break;
 case 136:
 case 135:
  hwsbase = 0x2f;
  hwebase = 0x2f;
  vwsbase = vwebase = 0x05;
  break;
 case 134:
 case 133:
  hwsbase = 0x1a;
  hwebase = 0x1a;
  vwsbase = vwebase = 0x03;
  break;
 default:
  return;
 }

 switch (sd->sensor) {
 case 140:
 case 139:
 case 138:
  if (qvga) {
   hwscale = 0;
   vwscale = 0;
  } else {
   hwscale = 1;
   vwscale = 1;

  }
  break;
 case 129:
  if (qvga) {
   hwscale = 1;
   vwscale = 1;
  } else {
   hwscale = 2;
   vwscale = 2;
  }
  break;
 default:
  if (qvga) {
   hwscale = 1;
   vwscale = 0;
  } else {
   hwscale = 2;
   vwscale = 1;
  }
 }

 mode_init_ov_sensor_regs(sd);

 i2c_w(sd, 0x17, hwsbase);
 i2c_w(sd, 0x18, hwebase + (sd->sensor_width >> hwscale));
 i2c_w(sd, 0x19, vwsbase);
 i2c_w(sd, 0x1a, vwebase + (sd->sensor_height >> vwscale));
}
