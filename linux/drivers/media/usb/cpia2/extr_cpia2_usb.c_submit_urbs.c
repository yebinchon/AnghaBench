
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int number_of_packets; int interval; int transfer_buffer_length; TYPE_1__* iso_frame_desc; int complete; int * transfer_buffer; int transfer_flags; int pipe; struct camera_data* context; int dev; } ;
struct camera_data {TYPE_2__* sbuf; int dev; } ;
struct TYPE_4__ {struct urb* urb; int * data; } ;
struct TYPE_3__ {int offset; int length; } ;


 int ENOMEM ;
 int ERR (char*,int,int) ;
 int FRAMES_PER_DESC ;
 int FRAME_SIZE_PER_DESC ;
 int GFP_KERNEL ;
 int NUM_SBUF ;
 int URB_ISO_ASAP ;
 int cpia2_usb_complete ;
 int kfree (int *) ;
 int * kmalloc_array (int,int,int ) ;
 struct urb* usb_alloc_urb (int,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvisocpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int submit_urbs(struct camera_data *cam)
{
 struct urb *urb;
 int fx, err, i, j;

 for(i=0; i<NUM_SBUF; ++i) {
  if (cam->sbuf[i].data)
   continue;
  cam->sbuf[i].data =
      kmalloc_array(FRAME_SIZE_PER_DESC, FRAMES_PER_DESC,
      GFP_KERNEL);
  if (!cam->sbuf[i].data) {
   while (--i >= 0) {
    kfree(cam->sbuf[i].data);
    cam->sbuf[i].data = ((void*)0);
   }
   return -ENOMEM;
  }
 }




 for(i=0; i<NUM_SBUF; ++i) {
  if(cam->sbuf[i].urb) {
   continue;
  }
  urb = usb_alloc_urb(FRAMES_PER_DESC, GFP_KERNEL);
  if (!urb) {
   for (j = 0; j < i; j++)
    usb_free_urb(cam->sbuf[j].urb);
   for (j = 0; j < NUM_SBUF; j++) {
    kfree(cam->sbuf[j].data);
    cam->sbuf[j].data = ((void*)0);
   }
   return -ENOMEM;
  }

  cam->sbuf[i].urb = urb;
  urb->dev = cam->dev;
  urb->context = cam;
  urb->pipe = usb_rcvisocpipe(cam->dev, 1 );
  urb->transfer_flags = URB_ISO_ASAP;
  urb->transfer_buffer = cam->sbuf[i].data;
  urb->complete = cpia2_usb_complete;
  urb->number_of_packets = FRAMES_PER_DESC;
  urb->interval = 1;
  urb->transfer_buffer_length =
   FRAME_SIZE_PER_DESC * FRAMES_PER_DESC;

  for (fx = 0; fx < FRAMES_PER_DESC; fx++) {
   urb->iso_frame_desc[fx].offset =
    FRAME_SIZE_PER_DESC * fx;
   urb->iso_frame_desc[fx].length = FRAME_SIZE_PER_DESC;
  }
 }



 for(i=0; i<NUM_SBUF; ++i) {
  err = usb_submit_urb(cam->sbuf[i].urb, GFP_KERNEL);
  if (err) {
   ERR("usb_submit_urb[%d]() = %d\n", i, err);
   return err;
  }
 }

 return 0;
}
