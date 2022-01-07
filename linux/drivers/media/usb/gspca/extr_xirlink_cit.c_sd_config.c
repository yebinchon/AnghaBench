
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int driver_info; } ;
struct sd {int model; int sof_len; int stop_on_control_change; } ;
struct cam {int nmodes; int input_flags; void* cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 void* ARRAY_SIZE (void*) ;






 int V4L2_IN_ST_VFLIP ;
 void* cif_yuv_mode ;
 scalar_t__ ibm_netcam_pro ;
 void* model0_mode ;
 void* model2_mode ;
 void* vga_yuv_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
       const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 sd->model = id->driver_info;
 if (sd->model == 129 && ibm_netcam_pro)
  sd->model = 133;

 cam = &gspca_dev->cam;
 switch (sd->model) {
 case 132:
  cam->cam_mode = model0_mode;
  cam->nmodes = ARRAY_SIZE(model0_mode);
  sd->sof_len = 4;
  break;
 case 131:
  cam->cam_mode = cif_yuv_mode;
  cam->nmodes = ARRAY_SIZE(cif_yuv_mode);
  sd->sof_len = 4;
  break;
 case 130:
  cam->cam_mode = model2_mode + 1;
  cam->nmodes = 3;
  break;
 case 129:
  cam->cam_mode = vga_yuv_mode;
  cam->nmodes = ARRAY_SIZE(vga_yuv_mode);
  sd->stop_on_control_change = 1;
  sd->sof_len = 4;
  break;
 case 128:
  cam->cam_mode = model2_mode;
  cam->nmodes = ARRAY_SIZE(model2_mode);
  break;
 case 133:
  cam->cam_mode = vga_yuv_mode;
  cam->nmodes = 2;
  cam->input_flags = V4L2_IN_ST_VFLIP;
  sd->stop_on_control_change = 1;
  sd->sof_len = 4;
  break;
 }

 return 0;
}
