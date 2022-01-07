
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gspca_dev {int streaming; TYPE_1__* sd_desc; scalar_t__ present; scalar_t__ usb_err; } ;
struct TYPE_2__ {int (* stop0 ) (struct gspca_dev*) ;int (* stopN ) (struct gspca_dev*) ;} ;


 int D_STREAM ;
 int destroy_urbs (struct gspca_dev*) ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int gspca_input_create_urb (struct gspca_dev*) ;
 int gspca_input_destroy_urb (struct gspca_dev*) ;
 int gspca_set_alt0 (struct gspca_dev*) ;
 int stub1 (struct gspca_dev*) ;
 int stub2 (struct gspca_dev*) ;

__attribute__((used)) static void gspca_stream_off(struct gspca_dev *gspca_dev)
{
 gspca_dev->streaming = 0;
 gspca_dev->usb_err = 0;
 if (gspca_dev->sd_desc->stopN)
  gspca_dev->sd_desc->stopN(gspca_dev);
 destroy_urbs(gspca_dev);
 gspca_input_destroy_urb(gspca_dev);
 gspca_set_alt0(gspca_dev);
 if (gspca_dev->present)
  gspca_input_create_urb(gspca_dev);
 if (gspca_dev->sd_desc->stop0)
  gspca_dev->sd_desc->stop0(gspca_dev);
 gspca_dbg(gspca_dev, D_STREAM, "stream off OK\n");
}
