
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;
struct sd {int* firmware_id; int block_size; int work_struct; } ;
struct cam {int bulk_size; int bulk; void* nmodes; void* cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 void* ARRAY_SIZE (void*) ;
 int INIT_WORK (int *,int ) ;
 void* cif_mode ;
 int jl2005c_dostream ;
 int jl2005c_get_firmware_id (struct gspca_dev*) ;
 void* vga_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct cam *cam;
 struct sd *sd = (struct sd *) gspca_dev;

 cam = &gspca_dev->cam;

 cam->bulk_size = 64;
 cam->bulk = 1;

 jl2005c_get_firmware_id(gspca_dev);
 if ((sd->firmware_id[0] & 0xf0) == 0x40) {
  cam->cam_mode = cif_mode;
  cam->nmodes = ARRAY_SIZE(cif_mode);
  sd->block_size = 0x80;
 } else {
  cam->cam_mode = vga_mode;
  cam->nmodes = ARRAY_SIZE(vga_mode);
  sd->block_size = 0x200;
 }

 INIT_WORK(&sd->work_struct, jl2005c_dostream);

 return 0;
}
