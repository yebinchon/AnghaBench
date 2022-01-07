
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 int D_CONF ;
 int VV6410_CIF_LINELENGTH ;
 int VV6410_COARSEH ;
 int VV6410_COARSEL ;
 int VV6410_FINEH ;
 int VV6410_FINEL ;
 int gspca_dbg (struct gspca_dev*,int ,char*,unsigned int,unsigned int) ;
 unsigned int min (int,int) ;
 int stv06xx_write_sensor (struct sd*,int ,unsigned int) ;

__attribute__((used)) static int vv6410_set_exposure(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 struct sd *sd = (struct sd *) gspca_dev;
 unsigned int fine, coarse;

 val = (val * val >> 14) + val / 4;

 fine = val % VV6410_CIF_LINELENGTH;
 coarse = min(512, val / VV6410_CIF_LINELENGTH);

 gspca_dbg(gspca_dev, D_CONF, "Set coarse exposure to %d, fine exposure to %d\n",
    coarse, fine);

 err = stv06xx_write_sensor(sd, VV6410_FINEH, fine >> 8);
 if (err < 0)
  goto out;

 err = stv06xx_write_sensor(sd, VV6410_FINEL, fine & 0xff);
 if (err < 0)
  goto out;

 err = stv06xx_write_sensor(sd, VV6410_COARSEH, coarse >> 8);
 if (err < 0)
  goto out;

 err = stv06xx_write_sensor(sd, VV6410_COARSEL, coarse & 0xff);

out:
 return err;
}
