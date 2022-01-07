
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007_usb {int * video_urbs; int * audio_urbs; } ;
struct go7007 {int dev; int audio_enabled; struct go7007_usb* hpi_context; } ;


 int GFP_KERNEL ;
 int dev_err (int ,char*,int,int) ;
 int usb_kill_urb (int ) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int go7007_usb_stream_start(struct go7007 *go)
{
 struct go7007_usb *usb = go->hpi_context;
 int i, r;

 for (i = 0; i < 8; ++i) {
  r = usb_submit_urb(usb->video_urbs[i], GFP_KERNEL);
  if (r < 0) {
   dev_err(go->dev, "error submitting video urb %d: %d\n", i, r);
   goto video_submit_failed;
  }
 }
 if (!go->audio_enabled)
  return 0;

 for (i = 0; i < 8; ++i) {
  r = usb_submit_urb(usb->audio_urbs[i], GFP_KERNEL);
  if (r < 0) {
   dev_err(go->dev, "error submitting audio urb %d: %d\n", i, r);
   goto audio_submit_failed;
  }
 }
 return 0;

audio_submit_failed:
 for (i = 0; i < 7; ++i)
  usb_kill_urb(usb->audio_urbs[i]);
video_submit_failed:
 for (i = 0; i < 8; ++i)
  usb_kill_urb(usb->video_urbs[i]);
 return -1;
}
