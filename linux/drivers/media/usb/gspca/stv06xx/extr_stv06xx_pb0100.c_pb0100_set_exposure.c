
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 int D_CONF ;
 int PB_RINTTIME ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int) ;
 int stv06xx_write_sensor (struct sd*,int ,int ) ;

__attribute__((used)) static int pb0100_set_exposure(struct gspca_dev *gspca_dev, __s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int err;

 err = stv06xx_write_sensor(sd, PB_RINTTIME, val);
 gspca_dbg(gspca_dev, D_CONF, "Set exposure to %d, status: %d\n",
    val, err);

 return err;
}
