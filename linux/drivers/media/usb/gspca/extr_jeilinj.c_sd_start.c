
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int quality; int jpeg_hdr; } ;
struct TYPE_2__ {int width; int height; } ;
struct gspca_dev {int usb_err; TYPE_1__ pixfmt; } ;


 int D_STREAM ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ) ;
 int jlj_start (struct gspca_dev*) ;
 int jpeg_define (int ,int ,int ,int) ;
 int jpeg_set_qual (int ,int ) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *dev = (struct sd *) gspca_dev;


 jpeg_define(dev->jpeg_hdr, gspca_dev->pixfmt.height,
   gspca_dev->pixfmt.width,
   0x21);
 jpeg_set_qual(dev->jpeg_hdr, dev->quality);
 gspca_dbg(gspca_dev, D_STREAM, "Start streaming at %dx%d\n",
    gspca_dev->pixfmt.height, gspca_dev->pixfmt.width);
 jlj_start(gspca_dev);
 return gspca_dev->usb_err;
}
