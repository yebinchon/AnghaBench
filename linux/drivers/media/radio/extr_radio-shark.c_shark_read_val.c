
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_tea575x {struct shark_device* private_data; } ;
struct TYPE_2__ {int stereo; } ;
struct shark_device {int* transfer_buffer; int last_val; TYPE_1__ tea; int v4l2_dev; int usbdev; } ;


 int SHARK_IN_EP ;
 int SHARK_OUT_EP ;
 int TB_LEN ;
 int TEA575X_BIT_BAND_FM ;
 int TEA575X_BIT_BAND_MASK ;
 int TEA575X_BIT_MONO ;
 int memset (int*,int ,int ) ;
 int usb_interrupt_msg (int ,int ,int*,int ,int*,int) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_sndintpipe (int ,int ) ;
 int v4l2_err (int *,char*,int) ;

__attribute__((used)) static u32 shark_read_val(struct snd_tea575x *tea)
{
 struct shark_device *shark = tea->private_data;
 int i, res, actual_len;
 u32 val = 0;

 memset(shark->transfer_buffer, 0, TB_LEN);
 shark->transfer_buffer[0] = 0x80;
 res = usb_interrupt_msg(shark->usbdev,
    usb_sndintpipe(shark->usbdev, SHARK_OUT_EP),
    shark->transfer_buffer, TB_LEN,
    &actual_len, 1000);
 if (res < 0) {
  v4l2_err(&shark->v4l2_dev, "request-status error: %d\n", res);
  return shark->last_val;
 }

 res = usb_interrupt_msg(shark->usbdev,
    usb_rcvintpipe(shark->usbdev, SHARK_IN_EP),
    shark->transfer_buffer, TB_LEN,
    &actual_len, 1000);
 if (res < 0) {
  v4l2_err(&shark->v4l2_dev, "get-status error: %d\n", res);
  return shark->last_val;
 }

 for (i = 0; i < 4; i++)
  val |= shark->transfer_buffer[i] << (24 - i * 8);

 shark->last_val = val;






 if (((val & TEA575X_BIT_BAND_MASK) == TEA575X_BIT_BAND_FM) &&
     !(val & TEA575X_BIT_MONO))
  shark->tea.stereo = 1;
 else
  shark->tea.stereo = 0;

 return val;
}
