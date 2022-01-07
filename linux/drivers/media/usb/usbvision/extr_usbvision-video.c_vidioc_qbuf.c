
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {size_t index; int flags; } ;
struct usbvision_frame {scalar_t__ grabstate; int frame; int v4l2_format; scalar_t__ scanlength; int scanstate; } ;
struct usb_usbvision {size_t num_frames; int queue_lock; int inqueue; struct usbvision_frame* frame; int palette; } ;
struct file {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;
 int V4L2_BUF_FLAG_DONE ;
 scalar_t__ frame_state_ready ;
 scalar_t__ frame_state_unused ;
 int list_add_tail (int *,int *) ;
 int scan_state_scanning ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_qbuf(struct file *file, void *priv, struct v4l2_buffer *vb)
{
 struct usb_usbvision *usbvision = video_drvdata(file);
 struct usbvision_frame *frame;
 unsigned long lock_flags;


 if (vb->index >= usbvision->num_frames)
  return -EINVAL;

 frame = &usbvision->frame[vb->index];

 if (frame->grabstate != frame_state_unused)
  return -EAGAIN;


 frame->grabstate = frame_state_ready;
 frame->scanstate = scan_state_scanning;
 frame->scanlength = 0;

 vb->flags &= ~V4L2_BUF_FLAG_DONE;


 frame->v4l2_format = usbvision->palette;

 spin_lock_irqsave(&usbvision->queue_lock, lock_flags);
 list_add_tail(&usbvision->frame[vb->index].frame, &usbvision->inqueue);
 spin_unlock_irqrestore(&usbvision->queue_lock, lock_flags);

 return 0;
}
