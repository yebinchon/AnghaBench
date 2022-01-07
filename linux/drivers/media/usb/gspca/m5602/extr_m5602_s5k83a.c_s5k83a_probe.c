
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__** cam_mode; int nmodes; } ;
struct TYPE_5__ {TYPE_1__ cam; } ;
struct sd {int * rotation_thread; TYPE_2__ gspca_dev; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_6__ {int name; } ;


 int ARRAY_SIZE (scalar_t__**) ;
 int D_PROBE ;
 int ENODEV ;
 scalar_t__ S5K83A_SENSOR ;
 scalar_t__ SENSOR ;
 scalar_t__ force_sensor ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 scalar_t__ m5602_read_sensor (struct sd*,int,scalar_t__*,int) ;
 int m5602_write_bridge (struct sd*,scalar_t__,scalar_t__) ;
 int m5602_write_sensor (struct sd*,scalar_t__,scalar_t__*,int) ;
 int pr_info (char*,...) ;
 scalar_t__** preinit_s5k83a ;
 TYPE_3__ s5k83a ;
 scalar_t__** s5k83a_modes ;

int s5k83a_probe(struct sd *sd)
{
 u8 prod_id = 0, ver_id = 0;
 int i, err = 0;
 struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;

 if (force_sensor) {
  if (force_sensor == S5K83A_SENSOR) {
   pr_info("Forcing a %s sensor\n", s5k83a.name);
   goto sensor_found;
  }


  return -ENODEV;
 }

 gspca_dbg(gspca_dev, D_PROBE, "Probing for a s5k83a sensor\n");


 for (i = 0; i < ARRAY_SIZE(preinit_s5k83a) && !err; i++) {
  u8 data[2] = {preinit_s5k83a[i][2], preinit_s5k83a[i][3]};
  if (preinit_s5k83a[i][0] == SENSOR)
   err = m5602_write_sensor(sd, preinit_s5k83a[i][1],
    data, 2);
  else
   err = m5602_write_bridge(sd, preinit_s5k83a[i][1],
    data[0]);
 }




 if (m5602_read_sensor(sd, 0x00, &prod_id, 1))
  return -ENODEV;

 if (m5602_read_sensor(sd, 0x01, &ver_id, 1))
  return -ENODEV;

 if ((prod_id == 0xff) || (ver_id == 0xff))
  return -ENODEV;
 else
  pr_info("Detected a s5k83a sensor\n");

sensor_found:
 sd->gspca_dev.cam.cam_mode = s5k83a_modes;
 sd->gspca_dev.cam.nmodes = ARRAY_SIZE(s5k83a_modes);


 sd->rotation_thread = ((void*)0);

 return 0;
}
