
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct cx18_open_id* private_data; } ;
struct cx18_stream {scalar_t__ vb_type; int vb_timeout; } ;
struct cx18_open_id {size_t type; struct cx18* cx; } ;
struct cx18 {struct cx18_stream* streams; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 size_t CX18_ENC_STREAM_TYPE_YUV ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int cx18_vb_queue (struct cx18_open_id*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int videobuf_streamon (int ) ;

__attribute__((used)) static int cx18_streamon(struct file *file, void *priv,
 enum v4l2_buf_type type)
{
 struct cx18_open_id *id = file->private_data;
 struct cx18 *cx = id->cx;
 struct cx18_stream *s = &cx->streams[id->type];


 if ((s->vb_type != V4L2_BUF_TYPE_VIDEO_CAPTURE) &&
  (s->vb_type != V4L2_BUF_TYPE_VBI_CAPTURE))
  return -EINVAL;

 if (id->type != CX18_ENC_STREAM_TYPE_YUV)
  return -EINVAL;


 mod_timer(&s->vb_timeout, msecs_to_jiffies(2000) + jiffies);

 return videobuf_streamon(cx18_vb_queue(id));
}
