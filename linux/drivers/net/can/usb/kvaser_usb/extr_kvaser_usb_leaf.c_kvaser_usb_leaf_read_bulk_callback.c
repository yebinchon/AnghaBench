
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvaser_usb {TYPE_1__* intf; TYPE_2__* bulk_in; } ;
struct kvaser_cmd {int len; } ;
struct TYPE_4__ {int wMaxPacketSize; } ;
struct TYPE_3__ {int dev; } ;


 int CMD_HEADER_LEN ;
 int dev_err_ratelimited (int *,char*) ;
 int kvaser_usb_leaf_handle_command (struct kvaser_usb*,struct kvaser_cmd*) ;
 int le16_to_cpu (int ) ;
 int round_up (int,int ) ;

__attribute__((used)) static void kvaser_usb_leaf_read_bulk_callback(struct kvaser_usb *dev,
            void *buf, int len)
{
 struct kvaser_cmd *cmd;
 int pos = 0;

 while (pos <= len - CMD_HEADER_LEN) {
  cmd = buf + pos;
  if (cmd->len == 0) {
   pos = round_up(pos, le16_to_cpu
      (dev->bulk_in->wMaxPacketSize));
   continue;
  }

  if (pos + cmd->len > len) {
   dev_err_ratelimited(&dev->intf->dev, "Format error\n");
   break;
  }

  kvaser_usb_leaf_handle_command(dev, cmd);
  pos += cmd->len;
 }
}
