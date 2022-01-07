
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ cam_type; scalar_t__ sof_read; } ;
struct gspca_dev {int dummy; } ;


 scalar_t__ CAM_TYPE_CIF ;
 int isoc_enable (struct gspca_dev*) ;
 int start_cif_cam (struct gspca_dev*) ;
 int start_vga_cam (struct gspca_dev*) ;
 int stream_start (struct gspca_dev*) ;
 int zero_the_pointer (struct gspca_dev*) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int err_code;

 sd->sof_read = 0;





 err_code = zero_the_pointer(gspca_dev);
 if (err_code < 0)
  return err_code;

 err_code = stream_start(gspca_dev);
 if (err_code < 0)
  return err_code;

 if (sd->cam_type == CAM_TYPE_CIF) {
  err_code = start_cif_cam(gspca_dev);
 } else {
  err_code = start_vga_cam(gspca_dev);
 }
 if (err_code < 0)
  return err_code;

 return isoc_enable(gspca_dev);
}
