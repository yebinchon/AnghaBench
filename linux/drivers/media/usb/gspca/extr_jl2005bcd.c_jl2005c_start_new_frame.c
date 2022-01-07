
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int* usb_buf; } ;


 int D_FRAM ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int jl2005c_read_reg (struct gspca_dev*,int) ;
 int jl2005c_write2 (struct gspca_dev*,int*) ;

__attribute__((used)) static int jl2005c_start_new_frame(struct gspca_dev *gspca_dev)
{
 int i;
 int retval;
 int frame_brightness = 0;

 static u8 instruction[2] = {0x7f, 0x01};

 retval = jl2005c_write2(gspca_dev, instruction);
 if (retval < 0)
  return retval;

 i = 0;
 while (i < 20 && !frame_brightness) {

  retval = jl2005c_read_reg(gspca_dev, 0x7e);
  if (retval < 0)
   return retval;
  frame_brightness = gspca_dev->usb_buf[0];
  retval = jl2005c_read_reg(gspca_dev, 0x7d);
  if (retval < 0)
   return retval;
  i++;
 }
 gspca_dbg(gspca_dev, D_FRAM, "frame_brightness is 0x%02x\n",
    gspca_dev->usb_buf[0]);
 return retval;
}
