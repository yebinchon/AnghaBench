
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct shark_device {int* transfer_buffer; int usbdev; } ;
struct radio_tea5777 {int v4l2_dev; struct shark_device* private_data; } ;


 int SHARK_IN_EP ;
 int SHARK_OUT_EP ;
 int TB_LEN ;
 int debug ;
 int memset (int*,int ,int ) ;
 int usb_interrupt_msg (int ,int ,int*,int ,int*,int) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_sndintpipe (int ,int ) ;
 int v4l2_dbg (int,int ,int ,char*,int,int*) ;
 int v4l2_err (int ,char*,int) ;

__attribute__((used)) static int shark_read_reg(struct radio_tea5777 *tea, u32 *reg_ret)
{
 struct shark_device *shark = tea->private_data;
 int i, res, actual_len;
 u32 reg = 0;

 memset(shark->transfer_buffer, 0, TB_LEN);
 shark->transfer_buffer[0] = 0x82;
 res = usb_interrupt_msg(shark->usbdev,
    usb_sndintpipe(shark->usbdev, SHARK_OUT_EP),
    shark->transfer_buffer, TB_LEN,
    &actual_len, 1000);
 if (res < 0) {
  v4l2_err(tea->v4l2_dev, "request-read error: %d\n", res);
  return res;
 }

 res = usb_interrupt_msg(shark->usbdev,
    usb_rcvintpipe(shark->usbdev, SHARK_IN_EP),
    shark->transfer_buffer, TB_LEN,
    &actual_len, 1000);
 if (res < 0) {
  v4l2_err(tea->v4l2_dev, "read error: %d\n", res);
  return res;
 }

 for (i = 0; i < 3; i++)
  reg |= shark->transfer_buffer[i] << (16 - i * 8);

 v4l2_dbg(1, debug, tea->v4l2_dev, "shark2-read: %*ph\n",
   3, shark->transfer_buffer);

 *reg_ret = reg;
 return 0;
}
