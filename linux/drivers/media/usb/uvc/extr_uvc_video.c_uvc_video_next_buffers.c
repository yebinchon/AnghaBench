
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timestamp; } ;
struct vb2_v4l2_buffer {TYPE_1__ vb2_buf; int field; int sequence; } ;
struct TYPE_4__ {int queue; } ;
struct uvc_streaming {int queue; TYPE_2__ meta; } ;
struct uvc_buffer {scalar_t__ error; int state; struct vb2_v4l2_buffer buf; } ;


 int UVC_BUF_STATE_READY ;
 struct uvc_buffer* uvc_queue_next_buffer (int *,struct uvc_buffer*) ;
 int uvc_video_validate_buffer (struct uvc_streaming*,struct uvc_buffer*) ;

__attribute__((used)) static void uvc_video_next_buffers(struct uvc_streaming *stream,
  struct uvc_buffer **video_buf, struct uvc_buffer **meta_buf)
{
 uvc_video_validate_buffer(stream, *video_buf);

 if (*meta_buf) {
  struct vb2_v4l2_buffer *vb2_meta = &(*meta_buf)->buf;
  const struct vb2_v4l2_buffer *vb2_video = &(*video_buf)->buf;

  vb2_meta->sequence = vb2_video->sequence;
  vb2_meta->field = vb2_video->field;
  vb2_meta->vb2_buf.timestamp = vb2_video->vb2_buf.timestamp;

  (*meta_buf)->state = UVC_BUF_STATE_READY;
  if (!(*meta_buf)->error)
   (*meta_buf)->error = (*video_buf)->error;
  *meta_buf = uvc_queue_next_buffer(&stream->meta.queue,
        *meta_buf);
 }
 *video_buf = uvc_queue_next_buffer(&stream->queue, *video_buf);
}
