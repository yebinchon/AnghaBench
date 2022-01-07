
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cam {TYPE_1__* cam_mode; } ;
struct TYPE_4__ {size_t curr_mode; struct cam cam; } ;
struct sd {TYPE_2__ gspca_dev; } ;
struct TYPE_3__ {scalar_t__ priv; } ;


 int stv06xx_write_bridge (struct sd*,int,int) ;

__attribute__((used)) static int st6422_start(struct sd *sd)
{
 int err;
 struct cam *cam = &sd->gspca_dev.cam;

 if (cam->cam_mode[sd->gspca_dev.curr_mode].priv)
  err = stv06xx_write_bridge(sd, 0x1505, 0x0f);
 else
  err = stv06xx_write_bridge(sd, 0x1505, 0x02);
 if (err < 0)
  return err;


 err = stv06xx_write_bridge(sd, 0x143f, 0x01);
 return (err < 0) ? err : 0;
}
