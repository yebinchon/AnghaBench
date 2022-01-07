
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct ati_remote {int send_flags; TYPE_2__* out_urb; int wait; TYPE_1__* interface; int udev; } ;
struct TYPE_5__ {int status; int dev; scalar_t__ transfer_buffer_length; scalar_t__ transfer_buffer; } ;
struct TYPE_4__ {int dev; } ;


 int EINPROGRESS ;
 int GFP_ATOMIC ;
 char HI (int ) ;
 int HZ ;
 scalar_t__ LO (int ) ;
 int SEND_FLAG_COMPLETE ;
 int SEND_FLAG_IN_PROGRESS ;
 int dev_dbg (int *,char*,int) ;
 int memcpy (scalar_t__,unsigned char*,scalar_t__) ;
 int usb_kill_urb (TYPE_2__*) ;
 int usb_submit_urb (TYPE_2__*,int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int ati_remote_sendpacket(struct ati_remote *ati_remote, u16 cmd,
 unsigned char *data)
{
 int retval = 0;


 memcpy(ati_remote->out_urb->transfer_buffer + 1, data, LO(cmd));
 ((char *) ati_remote->out_urb->transfer_buffer)[0] = HI(cmd);

 ati_remote->out_urb->transfer_buffer_length = LO(cmd) + 1;
 ati_remote->out_urb->dev = ati_remote->udev;
 ati_remote->send_flags = SEND_FLAG_IN_PROGRESS;

 retval = usb_submit_urb(ati_remote->out_urb, GFP_ATOMIC);
 if (retval) {
  dev_dbg(&ati_remote->interface->dev,
    "sendpacket: usb_submit_urb failed: %d\n", retval);
  return retval;
 }

 wait_event_timeout(ati_remote->wait,
  ((ati_remote->out_urb->status != -EINPROGRESS) ||
   (ati_remote->send_flags & SEND_FLAG_COMPLETE)),
  HZ);
 usb_kill_urb(ati_remote->out_urb);

 return retval;
}
