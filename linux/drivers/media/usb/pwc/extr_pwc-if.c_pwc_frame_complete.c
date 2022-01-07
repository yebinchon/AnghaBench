
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vb2_buf; int sequence; int field; } ;
struct pwc_frame_buf {int filled; TYPE_1__ vb; scalar_t__ data; } ;
struct pwc_device {int type; scalar_t__ drop_frames; unsigned char vmirror; int frame_total_size; int vframe_count; scalar_t__ vsync; struct pwc_frame_buf* fill_buf; } ;


 int PWC_DEBUG_FLOW (char*,int) ;
 int PWC_TRACE (char*) ;
 int V4L2_FIELD_NONE ;
 int VB2_BUF_STATE_DONE ;
 int pwc_snapshot_button (struct pwc_device*,unsigned char) ;
 int vb2_buffer_done (int *,int ) ;

__attribute__((used)) static void pwc_frame_complete(struct pwc_device *pdev)
{
 struct pwc_frame_buf *fbuf = pdev->fill_buf;





 if (pdev->type == 730) {
  unsigned char *ptr = (unsigned char *)fbuf->data;

  if (ptr[1] == 1 && ptr[0] & 0x10) {
   PWC_TRACE("Hyundai CMOS sensor bug. Dropping frame.\n");
   pdev->drop_frames += 2;
  }
  if ((ptr[0] ^ pdev->vmirror) & 0x01) {
   pwc_snapshot_button(pdev, ptr[0] & 0x01);
  }
  if ((ptr[0] ^ pdev->vmirror) & 0x02) {
   if (ptr[0] & 0x02)
    PWC_TRACE("Image is mirrored.\n");
   else
    PWC_TRACE("Image is normal.\n");
  }
  pdev->vmirror = ptr[0] & 0x03;
  if (fbuf->filled == 4)
   pdev->drop_frames++;
 } else if (pdev->type == 740 || pdev->type == 720) {
  unsigned char *ptr = (unsigned char *)fbuf->data;
  if ((ptr[0] ^ pdev->vmirror) & 0x01) {
   pwc_snapshot_button(pdev, ptr[0] & 0x01);
  }
  pdev->vmirror = ptr[0] & 0x03;
 }


 if (pdev->drop_frames > 0) {
  pdev->drop_frames--;
 } else {

  if (fbuf->filled < pdev->frame_total_size) {
   PWC_DEBUG_FLOW("Frame buffer underflow (%d bytes); discarded.\n",
           fbuf->filled);
  } else {
   fbuf->vb.field = V4L2_FIELD_NONE;
   fbuf->vb.sequence = pdev->vframe_count;
   vb2_buffer_done(&fbuf->vb.vb2_buf, VB2_BUF_STATE_DONE);
   pdev->fill_buf = ((void*)0);
   pdev->vsync = 0;
  }
 }
 pdev->vframe_count++;
}
