
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
 int PB_IDENT ;
 int pb0100_mode ;
 int pr_info (char*) ;
 int stv06xx_read_sensor (struct sd*,int ,int*) ;

__attribute__((used)) static int pb0100_probe(struct sd *sd)
{
 u16 sensor;
 int err;

 err = stv06xx_read_sensor(sd, PB_IDENT, &sensor);

 if (err < 0)
  return -ENODEV;
 if ((sensor >> 8) != 0x64)
  return -ENODEV;

 pr_info("Photobit pb0100 sensor detected\n");

 sd->gspca_dev.cam.cam_mode = pb0100_mode;
 sd->gspca_dev.cam.nmodes = ARRAY_SIZE(pb0100_mode);

 return 0;
}
