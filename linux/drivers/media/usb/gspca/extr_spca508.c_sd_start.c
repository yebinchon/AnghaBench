
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;


 int reg_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 int mode;

 mode = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv;
 reg_write(gspca_dev, 0x8500, mode);
 switch (mode) {
 case 0:
 case 1:
  reg_write(gspca_dev, 0x8700, 0x28);
  break;
 default:


  reg_write(gspca_dev, 0x8700, 0x23);
  break;
 }
 reg_write(gspca_dev, 0x8112, 0x10 | 0x20);
 return 0;
}
