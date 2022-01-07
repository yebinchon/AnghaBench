
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbvision_frame {scalar_t__ scanstate; long scanlength; int grabstate; int frame; int sequence; int ts; } ;
struct usb_usbvision {scalar_t__ isoc_mode; int wait_frame; int frame_num; int queue_lock; struct usbvision_frame* cur_frame; int outqueue; } ;
typedef enum parse_state { ____Placeholder_parse_state } parse_state ;


 int DBG_PARSE ;
 scalar_t__ ISOC_MODE_COMPRESS ;
 scalar_t__ ISOC_MODE_YUV420 ;
 scalar_t__ ISOC_MODE_YUV422 ;
 int PDEBUG (int ,char*,...) ;
 int frame_state_done ;
 int frame_state_grabbing ;
 int ktime_get_ns () ;
 int list_move_tail (int *,int *) ;
 int parse_state_continue ;
 int parse_state_next_frame ;
 int parse_state_out ;
 scalar_t__ scan_state_lines ;
 scalar_t__ scan_state_scanning ;
 scalar_t__ scratch_len (struct usb_usbvision*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usbvision_find_header (struct usb_usbvision*) ;
 int usbvision_parse_compress (struct usb_usbvision*,long*) ;
 int usbvision_parse_lines_420 (struct usb_usbvision*,long*) ;
 int usbvision_parse_lines_422 (struct usb_usbvision*,long*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void usbvision_parse_data(struct usb_usbvision *usbvision)
{
 struct usbvision_frame *frame;
 enum parse_state newstate;
 long copylen = 0;
 unsigned long lock_flags;

 frame = usbvision->cur_frame;

 PDEBUG(DBG_PARSE, "parsing len=%d\n", scratch_len(usbvision));

 while (1) {
  newstate = parse_state_out;
  if (scratch_len(usbvision)) {
   if (frame->scanstate == scan_state_scanning) {
    newstate = usbvision_find_header(usbvision);
   } else if (frame->scanstate == scan_state_lines) {
    if (usbvision->isoc_mode == ISOC_MODE_YUV420)
     newstate = usbvision_parse_lines_420(usbvision, &copylen);
    else if (usbvision->isoc_mode == ISOC_MODE_YUV422)
     newstate = usbvision_parse_lines_422(usbvision, &copylen);
    else if (usbvision->isoc_mode == ISOC_MODE_COMPRESS)
     newstate = usbvision_parse_compress(usbvision, &copylen);
   }
  }
  if (newstate == parse_state_continue)
   continue;
  if ((newstate == parse_state_next_frame) || (newstate == parse_state_out))
   break;
  return;
 }

 if (newstate == parse_state_next_frame) {
  frame->grabstate = frame_state_done;
  frame->ts = ktime_get_ns();
  frame->sequence = usbvision->frame_num;

  spin_lock_irqsave(&usbvision->queue_lock, lock_flags);
  list_move_tail(&(frame->frame), &usbvision->outqueue);
  usbvision->cur_frame = ((void*)0);
  spin_unlock_irqrestore(&usbvision->queue_lock, lock_flags);

  usbvision->frame_num++;


  if (waitqueue_active(&usbvision->wait_frame)) {
   PDEBUG(DBG_PARSE, "Wake up !");
   wake_up_interruptible(&usbvision->wait_frame);
  }
 } else {
  frame->grabstate = frame_state_grabbing;
 }


 frame->scanlength += copylen;
}
