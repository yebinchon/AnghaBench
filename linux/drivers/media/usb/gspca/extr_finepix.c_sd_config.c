
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fpix {int work_struct; } ;
struct usb_device_id {int dummy; } ;
struct cam {int nmodes; int bulk; int bulk_size; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int FPIX_MAX_TRANSFER ;
 int INIT_WORK (int *,int ) ;
 int dostream ;
 int fpix_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
  const struct usb_device_id *id)
{
 struct usb_fpix *dev = (struct usb_fpix *) gspca_dev;
 struct cam *cam = &gspca_dev->cam;

 cam->cam_mode = fpix_mode;
 cam->nmodes = 1;
 cam->bulk = 1;
 cam->bulk_size = FPIX_MAX_TRANSFER;

 INIT_WORK(&dev->work_struct, dostream);

 return 0;
}
