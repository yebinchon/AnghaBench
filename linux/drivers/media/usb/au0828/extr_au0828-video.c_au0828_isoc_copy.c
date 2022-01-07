
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {int status; int number_of_packets; unsigned char* transfer_buffer; TYPE_2__* iso_frame_desc; struct au0828_dmaqueue* context; } ;
struct au0828_dmaqueue {scalar_t__ pos; } ;
struct TYPE_4__ {struct au0828_buffer* vbi_buf; struct au0828_buffer* buf; } ;
struct au0828_dev {int max_pkt_size; unsigned int vbi_read; int vbi_width; int vbi_height; int vbi_timeout; scalar_t__ vbi_timeout_running; int vid_timeout; scalar_t__ vid_timeout_running; TYPE_1__ isoc_ctl; int dev_state; struct au0828_dmaqueue vbiq; } ;
struct TYPE_6__ {int vb2_buf; } ;
struct au0828_buffer {int top_field; TYPE_3__ vb; } ;
struct TYPE_5__ {int status; int actual_length; int offset; } ;


 int DEV_DISCONNECTED ;
 int DEV_MISCONFIGURED ;
 int ENOENT ;
 int EPROTO ;
 int HZ ;
 int au0828_copy_vbi (struct au0828_dev*,struct au0828_dmaqueue*,struct au0828_buffer*,unsigned char*,unsigned char*,int) ;
 int au0828_copy_video (struct au0828_dev*,struct au0828_dmaqueue*,struct au0828_buffer*,unsigned char*,unsigned char*,int) ;
 int au0828_isocdbg (char*,...) ;
 int buffer_filled (struct au0828_dev*,struct au0828_dmaqueue*,struct au0828_buffer*) ;
 int get_next_buf (struct au0828_dmaqueue*,struct au0828_buffer**) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int print_err_status (struct au0828_dev*,int,int) ;
 scalar_t__ test_bit (int ,int *) ;
 unsigned char* vb2_plane_vaddr (int *,int ) ;
 int vbi_get_next_buf (struct au0828_dmaqueue*,struct au0828_buffer**) ;

__attribute__((used)) static inline int au0828_isoc_copy(struct au0828_dev *dev, struct urb *urb)
{
 struct au0828_buffer *buf;
 struct au0828_buffer *vbi_buf;
 struct au0828_dmaqueue *dma_q = urb->context;
 struct au0828_dmaqueue *vbi_dma_q = &dev->vbiq;
 unsigned char *outp = ((void*)0);
 unsigned char *vbioutp = ((void*)0);
 int i, len = 0, rc = 1;
 unsigned char *p;
 unsigned char fbyte;
 unsigned int vbi_field_size;
 unsigned int remain, lencopy;

 if (!dev)
  return 0;

 if (test_bit(DEV_DISCONNECTED, &dev->dev_state) ||
     test_bit(DEV_MISCONFIGURED, &dev->dev_state))
  return 0;

 if (urb->status < 0) {
  print_err_status(dev, -1, urb->status);
  if (urb->status == -ENOENT)
   return 0;
 }

 buf = dev->isoc_ctl.buf;
 if (buf != ((void*)0))
  outp = vb2_plane_vaddr(&buf->vb.vb2_buf, 0);

 vbi_buf = dev->isoc_ctl.vbi_buf;
 if (vbi_buf != ((void*)0))
  vbioutp = vb2_plane_vaddr(&vbi_buf->vb.vb2_buf, 0);

 for (i = 0; i < urb->number_of_packets; i++) {
  int status = urb->iso_frame_desc[i].status;

  if (status < 0) {
   print_err_status(dev, i, status);
   if (urb->iso_frame_desc[i].status != -EPROTO)
    continue;
  }

  if (urb->iso_frame_desc[i].actual_length <= 0)
   continue;

  if (urb->iso_frame_desc[i].actual_length >
      dev->max_pkt_size) {
   au0828_isocdbg("packet bigger than packet size");
   continue;
  }

  p = urb->transfer_buffer + urb->iso_frame_desc[i].offset;
  fbyte = p[0];
  len = urb->iso_frame_desc[i].actual_length - 4;
  p += 4;

  if (fbyte & 0x80) {
   len -= 4;
   p += 4;
   au0828_isocdbg("Video frame %s\n",
           (fbyte & 0x40) ? "odd" : "even");
   if (fbyte & 0x40) {

    if (vbi_buf != ((void*)0))
     buffer_filled(dev, vbi_dma_q, vbi_buf);
    vbi_get_next_buf(vbi_dma_q, &vbi_buf);
    if (vbi_buf == ((void*)0))
     vbioutp = ((void*)0);
    else
     vbioutp = vb2_plane_vaddr(
      &vbi_buf->vb.vb2_buf, 0);


    if (buf != ((void*)0))
     buffer_filled(dev, dma_q, buf);
    get_next_buf(dma_q, &buf);
    if (buf == ((void*)0))
     outp = ((void*)0);
    else
     outp = vb2_plane_vaddr(
      &buf->vb.vb2_buf, 0);



    if (dev->vid_timeout_running)
     mod_timer(&dev->vid_timeout,
        jiffies + (HZ / 10));
    if (dev->vbi_timeout_running)
     mod_timer(&dev->vbi_timeout,
        jiffies + (HZ / 10));
   }

   if (buf != ((void*)0)) {
    if (fbyte & 0x40)
     buf->top_field = 1;
    else
     buf->top_field = 0;
   }

   if (vbi_buf != ((void*)0)) {
    if (fbyte & 0x40)
     vbi_buf->top_field = 1;
    else
     vbi_buf->top_field = 0;
   }

   dev->vbi_read = 0;
   vbi_dma_q->pos = 0;
   dma_q->pos = 0;
  }

  vbi_field_size = dev->vbi_width * dev->vbi_height * 2;
  if (dev->vbi_read < vbi_field_size) {
   remain = vbi_field_size - dev->vbi_read;
   if (len < remain)
    lencopy = len;
   else
    lencopy = remain;

   if (vbi_buf != ((void*)0))
    au0828_copy_vbi(dev, vbi_dma_q, vbi_buf, p,
      vbioutp, len);

   len -= lencopy;
   p += lencopy;
   dev->vbi_read += lencopy;
  }

  if (dev->vbi_read >= vbi_field_size && buf != ((void*)0))
   au0828_copy_video(dev, dma_q, buf, p, outp, len);
 }
 return rc;
}
