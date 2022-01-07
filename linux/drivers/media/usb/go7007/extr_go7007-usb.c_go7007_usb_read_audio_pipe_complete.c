
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; int actual_length; int transfer_buffer; int transfer_buffer_length; scalar_t__ context; } ;
struct go7007 {int dev; int (* audio_deliver ) (struct go7007*,int ,int ) ;int vidq; } ;


 int GFP_ATOMIC ;
 int dev_err (int ,char*,...) ;
 int stub1 (struct go7007*,int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int vb2_is_streaming (int *) ;

__attribute__((used)) static void go7007_usb_read_audio_pipe_complete(struct urb *urb)
{
 struct go7007 *go = (struct go7007 *)urb->context;
 int r, status = urb->status;

 if (!vb2_is_streaming(&go->vidq))
  return;
 if (status) {
  dev_err(go->dev, "error in audio pipe: %d\n",
   status);
  return;
 }
 if (urb->actual_length != urb->transfer_buffer_length) {
  dev_err(go->dev, "short read in audio pipe!\n");
  return;
 }
 if (go->audio_deliver != ((void*)0))
  go->audio_deliver(go, urb->transfer_buffer, urb->actual_length);
 r = usb_submit_urb(urb, GFP_ATOMIC);
 if (r < 0)
  dev_err(go->dev, "error in audio pipe: %d\n", r);
}
