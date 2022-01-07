
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int dummy; } ;
struct TYPE_2__ {int width; int height; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;
typedef int __s32 ;


 int D_CONF ;
 int PB_R21 ;
 int PB_R22 ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,int) ;
 int stv06xx_write_sensor (struct sd*,int ,int) ;

__attribute__((used)) static int pb0100_set_autogain_target(struct gspca_dev *gspca_dev, __s32 val)
{
 int err, totalpixels, brightpixels, darkpixels;
 struct sd *sd = (struct sd *) gspca_dev;



 totalpixels = gspca_dev->pixfmt.width * gspca_dev->pixfmt.height;
 totalpixels = totalpixels/(8*8) + totalpixels/(64*64);

 brightpixels = (totalpixels * val) >> 8;
 darkpixels = totalpixels - brightpixels;
 err = stv06xx_write_sensor(sd, PB_R21, brightpixels);
 if (!err)
  err = stv06xx_write_sensor(sd, PB_R22, darkpixels);

 gspca_dbg(gspca_dev, D_CONF, "Set autogain target to %d, status: %d\n",
    val, err);

 return err;
}
