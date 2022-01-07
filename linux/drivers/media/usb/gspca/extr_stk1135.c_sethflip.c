
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ flip_status; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int sensor_write_mask (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static void sethflip(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->flip_status)
  val = !val;
 sensor_write_mask(gspca_dev, 0x020, val ? 0x0002 : 0x0000 , 0x0002);
}
