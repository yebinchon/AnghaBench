
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int status; int number_of_packets; unsigned char* transfer_buffer; TYPE_1__* iso_frame_desc; scalar_t__ context; } ;
struct TYPE_4__ {int vb2_buf; } ;
struct msi2500_frame_buf {TYPE_2__ vb; } ;
struct msi2500_dev {scalar_t__ isoc_errors; int dev; int vb_full; } ;
struct TYPE_3__ {int status; int actual_length; int offset; } ;


 int ECONNRESET ;
 int ENOENT ;
 int ESHUTDOWN ;
 int GFP_ATOMIC ;
 scalar_t__ MAX_ISOC_ERRORS ;
 int VB2_BUF_STATE_DONE ;
 int dev_dbg (int ,char*,...) ;
 int dev_dbg_ratelimited (int ,char*,int,...) ;
 int msi2500_convert_stream (struct msi2500_dev*,void*,unsigned char*,int) ;
 struct msi2500_frame_buf* msi2500_get_next_fill_buf (struct msi2500_dev*) ;
 scalar_t__ unlikely (int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int vb2_buffer_done (int *,int ) ;
 void* vb2_plane_vaddr (int *,int ) ;
 int vb2_set_plane_payload (int *,int ,int) ;

__attribute__((used)) static void msi2500_isoc_handler(struct urb *urb)
{
 struct msi2500_dev *dev = (struct msi2500_dev *)urb->context;
 int i, flen, fstatus;
 unsigned char *iso_buf = ((void*)0);
 struct msi2500_frame_buf *fbuf;

 if (unlikely(urb->status == -ENOENT ||
       urb->status == -ECONNRESET ||
       urb->status == -ESHUTDOWN)) {
  dev_dbg(dev->dev, "URB (%p) unlinked %ssynchronously\n",
   urb, urb->status == -ENOENT ? "" : "a");
  return;
 }

 if (unlikely(urb->status != 0)) {
  dev_dbg(dev->dev, "called with status %d\n", urb->status);

  if (++dev->isoc_errors > MAX_ISOC_ERRORS)
   dev_dbg(dev->dev, "Too many ISOC errors, bailing out\n");
  goto handler_end;
 } else {

  dev->isoc_errors = 0;
 }


 for (i = 0; i < urb->number_of_packets; i++) {
  void *ptr;


  fstatus = urb->iso_frame_desc[i].status;
  if (unlikely(fstatus)) {
   dev_dbg_ratelimited(dev->dev,
         "frame=%d/%d has error %d skipping\n",
         i, urb->number_of_packets, fstatus);
   continue;
  }


  flen = urb->iso_frame_desc[i].actual_length;
  if (unlikely(flen == 0))
   continue;

  iso_buf = urb->transfer_buffer + urb->iso_frame_desc[i].offset;


  fbuf = msi2500_get_next_fill_buf(dev);
  if (unlikely(fbuf == ((void*)0))) {
   dev->vb_full++;
   dev_dbg_ratelimited(dev->dev,
         "videobuf is full, %d packets dropped\n",
         dev->vb_full);
   continue;
  }


  ptr = vb2_plane_vaddr(&fbuf->vb.vb2_buf, 0);
  flen = msi2500_convert_stream(dev, ptr, iso_buf, flen);
  vb2_set_plane_payload(&fbuf->vb.vb2_buf, 0, flen);
  vb2_buffer_done(&fbuf->vb.vb2_buf, VB2_BUF_STATE_DONE);
 }

handler_end:
 i = usb_submit_urb(urb, GFP_ATOMIC);
 if (unlikely(i != 0))
  dev_dbg(dev->dev, "Error (%d) re-submitting urb\n", i);
}
