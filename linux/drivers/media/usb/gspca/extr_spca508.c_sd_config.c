
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device_id {size_t driver_info; } ;
struct sd {size_t subtype; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int D_PROBE ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,...) ;
 int reg_read (struct gspca_dev*,int) ;
 int sif_mode ;





 int write_vector (struct gspca_dev*,int const**) ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;
 const u16 (*init_data)[2];
 static const u16 (*(init_data_tb[]))[2] = {
  129,
  130,
  131,
  128,
  128,
  132,
 };
 int data1, data2;





 data1 = reg_read(gspca_dev, 0x8104);
 data2 = reg_read(gspca_dev, 0x8105);
 gspca_dbg(gspca_dev, D_PROBE, "Webcam Vendor ID: 0x%02x%02x\n",
    data2, data1);

 data1 = reg_read(gspca_dev, 0x8106);
 data2 = reg_read(gspca_dev, 0x8107);
 gspca_dbg(gspca_dev, D_PROBE, "Webcam Product ID: 0x%02x%02x\n",
    data2, data1);

 data1 = reg_read(gspca_dev, 0x8621);
 gspca_dbg(gspca_dev, D_PROBE, "Window 1 average luminance: %d\n",
    data1);

 cam = &gspca_dev->cam;
 cam->cam_mode = sif_mode;
 cam->nmodes = ARRAY_SIZE(sif_mode);

 sd->subtype = id->driver_info;

 init_data = init_data_tb[sd->subtype];
 return write_vector(gspca_dev, init_data);
}
