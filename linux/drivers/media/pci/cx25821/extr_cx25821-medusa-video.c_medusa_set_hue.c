
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx25821_dev {int * i2c_bus; } ;


 int SIGNED_BYTE_MAX ;
 int SIGNED_BYTE_MIN ;
 scalar_t__ VDEC_A_HUE_CTRL ;
 int VIDEO_PROCAMP_MAX ;
 int VIDEO_PROCAMP_MIN ;
 int convert_to_twos (int,int) ;
 int cx25821_i2c_read (int *,scalar_t__,int*) ;
 int cx25821_i2c_write (int *,scalar_t__,int) ;
 int mapM (int,int,int,int ,int ,int*) ;

int medusa_set_hue(struct cx25821_dev *dev, int hue, int decoder)
{
 int ret_val = 0;
 int value = 0;
 u32 val = 0, tmp = 0;

 if ((hue > VIDEO_PROCAMP_MAX) || (hue < VIDEO_PROCAMP_MIN)) {
  return -1;
 }

 ret_val = mapM(VIDEO_PROCAMP_MIN, VIDEO_PROCAMP_MAX, hue,
   SIGNED_BYTE_MIN, SIGNED_BYTE_MAX, &value);

 value = convert_to_twos(value, 8);
 val = cx25821_i2c_read(&dev->i2c_bus[0],
   VDEC_A_HUE_CTRL + (0x200 * decoder), &tmp);
 val &= 0xFFFFFF00;

 ret_val |= cx25821_i2c_write(&dev->i2c_bus[0],
   VDEC_A_HUE_CTRL + (0x200 * decoder), val | value);

 return ret_val;
}
