
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int jpeg_hdr; } ;
struct TYPE_2__ {int width; int height; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;


 int QUALITY ;
 int cx11646_fw (struct gspca_dev*) ;
 int cx11646_initsize (struct gspca_dev*) ;
 int cx11646_jpeg (struct gspca_dev*) ;
 int cx_sensor (struct gspca_dev*) ;
 int jpeg_define (int ,int ,int ,int) ;
 int jpeg_set_qual (int ,int ) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;


 jpeg_define(sd->jpeg_hdr, gspca_dev->pixfmt.height,
   gspca_dev->pixfmt.width,
   0x22);
 jpeg_set_qual(sd->jpeg_hdr, QUALITY);

 cx11646_initsize(gspca_dev);
 cx11646_fw(gspca_dev);
 cx_sensor(gspca_dev);
 cx11646_jpeg(gspca_dev);
 return 0;
}
