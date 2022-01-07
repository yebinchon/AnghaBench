
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int driver_info; } ;
struct sd {int quality; int type; } ;
struct cam {int bulk; int bulk_nurbs; int bulk_size; int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int JEILINJ_MAX_TRANSFER ;
 int QUALITY_DEF ;
 int jlj_mode ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
  const struct usb_device_id *id)
{
 struct cam *cam = &gspca_dev->cam;
 struct sd *dev = (struct sd *) gspca_dev;

 dev->type = id->driver_info;
 dev->quality = QUALITY_DEF;

 cam->cam_mode = jlj_mode;
 cam->nmodes = ARRAY_SIZE(jlj_mode);
 cam->bulk = 1;
 cam->bulk_nurbs = 1;
 cam->bulk_size = JEILINJ_MAX_TRANSFER;
 return 0;
}
