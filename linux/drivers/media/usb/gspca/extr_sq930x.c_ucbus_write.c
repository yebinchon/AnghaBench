
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ucbus_write_cmd {int bw_addr; int bw_data; } ;
struct gspca_dev {int usb_err; int * usb_buf; int dev; } ;


 int D_USBO ;
 int ENOMEM ;
 int SQ930_CTRL_UCBUS_IO ;
 int USB_BUF_SZ ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,int,...) ;
 int gspca_err (struct gspca_dev*,char*) ;
 int msleep (int) ;
 int pr_err (char*,int) ;
 int usb_control_msg (int ,int ,int,int,int,int,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void ucbus_write(struct gspca_dev *gspca_dev,
   const struct ucbus_write_cmd *cmd,
   int ncmds,
   int batchsize)
{
 u8 *buf;
 u16 val, idx;
 int len, ret;

 if (gspca_dev->usb_err < 0)
  return;

 if ((batchsize - 1) * 3 > USB_BUF_SZ) {
  gspca_err(gspca_dev, "Bug: usb_buf overflow\n");
  gspca_dev->usb_err = -ENOMEM;
  return;
 }

 for (;;) {
  len = ncmds;
  if (len > batchsize)
   len = batchsize;
  ncmds -= len;

  val = (cmd->bw_addr << 8) | SQ930_CTRL_UCBUS_IO;
  idx = (cmd->bw_data << 8) | (cmd->bw_addr >> 8);

  buf = gspca_dev->usb_buf;
  while (--len > 0) {
   cmd++;
   *buf++ = cmd->bw_addr;
   *buf++ = cmd->bw_addr >> 8;
   *buf++ = cmd->bw_data;
  }
  if (buf != gspca_dev->usb_buf)
   gspca_dbg(gspca_dev, D_USBO, "ucbus v: %04x i: %04x %02x...%02x\n",
      val, idx,
      gspca_dev->usb_buf[0], buf[-1]);
  else
   gspca_dbg(gspca_dev, D_USBO, "ucbus v: %04x i: %04x\n",
      val, idx);
  ret = usb_control_msg(gspca_dev->dev,
    usb_sndctrlpipe(gspca_dev->dev, 0),
    0x0c,
      USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    val, idx,
    gspca_dev->usb_buf, buf - gspca_dev->usb_buf,
    500);
  if (ret < 0) {
   pr_err("ucbus_write failed %d\n", ret);
   gspca_dev->usb_err = ret;
   return;
  }
  msleep(30);
  if (ncmds <= 0)
   break;
  cmd++;
 }
}
