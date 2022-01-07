
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int nmodes; int cam_mode; } ;
struct TYPE_4__ {TYPE_1__ cam; } ;
struct sd {TYPE_2__ gspca_dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int VV6410_DEVICEH ;
 int pr_info (char*) ;
 int stv06xx_read_sensor (struct sd*,int ,int*) ;
 int vv6410_mode ;

__attribute__((used)) static int vv6410_probe(struct sd *sd)
{
 u16 data;
 int err;

 err = stv06xx_read_sensor(sd, VV6410_DEVICEH, &data);
 if (err < 0)
  return -ENODEV;

 if (data != 0x19)
  return -ENODEV;

 pr_info("vv6410 sensor detected\n");

 sd->gspca_dev.cam.cam_mode = vv6410_mode;
 sd->gspca_dev.cam.nmodes = ARRAY_SIZE(vv6410_mode);
 return 0;
}
