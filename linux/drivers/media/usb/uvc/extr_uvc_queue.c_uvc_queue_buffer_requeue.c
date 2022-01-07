
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_video_queue {int dummy; } ;
struct TYPE_2__ {int vb2_buf; } ;
struct uvc_buffer {TYPE_1__ buf; scalar_t__ bytesused; int state; scalar_t__ error; } ;


 int UVC_BUF_STATE_QUEUED ;
 int uvc_buffer_queue (int *) ;
 int vb2_set_plane_payload (int *,int ,int ) ;

__attribute__((used)) static void uvc_queue_buffer_requeue(struct uvc_video_queue *queue,
  struct uvc_buffer *buf)
{
 buf->error = 0;
 buf->state = UVC_BUF_STATE_QUEUED;
 buf->bytesused = 0;
 vb2_set_plane_payload(&buf->buf.vb2_buf, 0, 0);

 uvc_buffer_queue(&buf->buf.vb2_buf);
}
