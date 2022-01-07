
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;


 int ET_RESET_ALL ;
 int Et_init1 (struct gspca_dev*) ;
 int Et_init2 (struct gspca_dev*) ;
 scalar_t__ SENSOR_PAS106 ;
 int et_video (struct gspca_dev*,int ) ;
 int reg_w_val (struct gspca_dev*,int ,int) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_PAS106)
  Et_init1(gspca_dev);
 else
  Et_init2(gspca_dev);
 reg_w_val(gspca_dev, ET_RESET_ALL, 0x08);
 et_video(gspca_dev, 0);
 return 0;
}
