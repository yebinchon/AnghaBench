
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct kvaser_usb {TYPE_2__* intf; TYPE_1__* bulk_in; } ;
struct kvaser_cmd {int len; scalar_t__ id; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int wMaxPacketSize; } ;


 int CMD_HEADER_LEN ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KVASER_USB_RX_BUFFER_SIZE ;
 int KVASER_USB_TIMEOUT ;
 int dev_err_ratelimited (int *,char*) ;
 unsigned long jiffies ;
 int kfree (void*) ;
 int kvaser_usb_recv_cmd (struct kvaser_usb const*,void*,int ,int*) ;
 void* kzalloc (int ,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (struct kvaser_cmd*,struct kvaser_cmd*,int) ;
 unsigned long msecs_to_jiffies (int ) ;
 int round_up (int,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int kvaser_usb_leaf_wait_cmd(const struct kvaser_usb *dev, u8 id,
        struct kvaser_cmd *cmd)
{
 struct kvaser_cmd *tmp;
 void *buf;
 int actual_len;
 int err;
 int pos;
 unsigned long to = jiffies + msecs_to_jiffies(KVASER_USB_TIMEOUT);

 buf = kzalloc(KVASER_USB_RX_BUFFER_SIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 do {
  err = kvaser_usb_recv_cmd(dev, buf, KVASER_USB_RX_BUFFER_SIZE,
       &actual_len);
  if (err < 0)
   goto end;

  pos = 0;
  while (pos <= actual_len - CMD_HEADER_LEN) {
   tmp = buf + pos;





   if (tmp->len == 0) {
    pos = round_up(pos,
            le16_to_cpu
      (dev->bulk_in->wMaxPacketSize));
    continue;
   }

   if (pos + tmp->len > actual_len) {
    dev_err_ratelimited(&dev->intf->dev,
          "Format error\n");
    break;
   }

   if (tmp->id == id) {
    memcpy(cmd, tmp, tmp->len);
    goto end;
   }

   pos += tmp->len;
  }
 } while (time_before(jiffies, to));

 err = -EINVAL;

end:
 kfree(buf);

 return err;
}
