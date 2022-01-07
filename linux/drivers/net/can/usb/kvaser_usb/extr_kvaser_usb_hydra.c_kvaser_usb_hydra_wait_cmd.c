
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct kvaser_usb {TYPE_1__* intf; } ;
struct TYPE_4__ {scalar_t__ cmd_no; } ;
struct kvaser_cmd {TYPE_2__ header; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ CMD_EXTENDED ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KVASER_USB_RX_BUFFER_SIZE ;
 int KVASER_USB_TIMEOUT ;
 int dev_err (int *,char*) ;
 int dev_err_ratelimited (int *,char*) ;
 unsigned long jiffies ;
 int kfree (void*) ;
 size_t kvaser_usb_hydra_cmd_size (struct kvaser_cmd*) ;
 int kvaser_usb_recv_cmd (struct kvaser_usb const*,void*,int ,int*) ;
 void* kzalloc (int ,int ) ;
 int memcpy (struct kvaser_cmd*,struct kvaser_cmd*,size_t) ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int kvaser_usb_hydra_wait_cmd(const struct kvaser_usb *dev, u8 cmd_no,
         struct kvaser_cmd *cmd)
{
 void *buf;
 int err;
 unsigned long timeout = jiffies + msecs_to_jiffies(KVASER_USB_TIMEOUT);

 if (cmd->header.cmd_no == CMD_EXTENDED) {
  dev_err(&dev->intf->dev, "Wait for CMD_EXTENDED not allowed\n");
  return -EINVAL;
 }

 buf = kzalloc(KVASER_USB_RX_BUFFER_SIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 do {
  int actual_len = 0;
  int pos = 0;

  err = kvaser_usb_recv_cmd(dev, buf, KVASER_USB_RX_BUFFER_SIZE,
       &actual_len);
  if (err < 0)
   goto end;

  while (pos < actual_len) {
   struct kvaser_cmd *tmp_cmd;
   size_t cmd_len;

   tmp_cmd = buf + pos;
   cmd_len = kvaser_usb_hydra_cmd_size(tmp_cmd);
   if (pos + cmd_len > actual_len) {
    dev_err_ratelimited(&dev->intf->dev,
          "Format error\n");
    break;
   }

   if (tmp_cmd->header.cmd_no == cmd_no) {
    memcpy(cmd, tmp_cmd, cmd_len);
    goto end;
   }
   pos += cmd_len;
  }
 } while (time_before(jiffies, timeout));

 err = -EINVAL;

end:
 kfree(buf);

 return err;
}
