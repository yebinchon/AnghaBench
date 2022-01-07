
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd {int bridge; } ;
struct TYPE_4__ {int bulk_size; } ;
struct TYPE_3__ {int width; } ;
struct gspca_dev {TYPE_2__ cam; TYPE_1__ pixfmt; } ;



 int OVFX2_BULK_SIZE ;

__attribute__((used)) static int sd_isoc_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->bridge) {
 case 128:
  if (gspca_dev->pixfmt.width != 800)
   gspca_dev->cam.bulk_size = OVFX2_BULK_SIZE;
  else
   gspca_dev->cam.bulk_size = 7 * 4096;
  break;
 }
 return 0;
}
