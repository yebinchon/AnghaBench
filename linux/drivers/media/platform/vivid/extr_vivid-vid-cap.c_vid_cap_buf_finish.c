
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int* std_cap; size_t input; } ;
struct v4l2_timecode {unsigned int frames; unsigned int seconds; unsigned int minutes; unsigned int hours; scalar_t__ flags; int type; } ;
struct vb2_v4l2_buffer {unsigned int sequence; int flags; struct v4l2_timecode timecode; } ;
struct vb2_buffer {int vb2_queue; } ;


 int V4L2_BUF_FLAG_TIMECODE ;
 int V4L2_STD_525_60 ;
 int V4L2_TC_TYPE_25FPS ;
 int V4L2_TC_TYPE_30FPS ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct vivid_dev* vb2_get_drv_priv (int ) ;
 int vivid_is_sdtv_cap (struct vivid_dev*) ;

__attribute__((used)) static void vid_cap_buf_finish(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct vivid_dev *dev = vb2_get_drv_priv(vb->vb2_queue);
 struct v4l2_timecode *tc = &vbuf->timecode;
 unsigned fps = 25;
 unsigned seq = vbuf->sequence;

 if (!vivid_is_sdtv_cap(dev))
  return;





 vbuf->flags |= V4L2_BUF_FLAG_TIMECODE;
 if (dev->std_cap[dev->input] & V4L2_STD_525_60)
  fps = 30;
 tc->type = (fps == 30) ? V4L2_TC_TYPE_30FPS : V4L2_TC_TYPE_25FPS;
 tc->flags = 0;
 tc->frames = seq % fps;
 tc->seconds = (seq / fps) % 60;
 tc->minutes = (seq / (60 * fps)) % 60;
 tc->hours = (seq / (60 * 60 * fps)) % 24;
}
