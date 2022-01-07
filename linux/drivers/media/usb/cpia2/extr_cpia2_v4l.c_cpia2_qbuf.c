
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_buffer {scalar_t__ type; scalar_t__ memory; size_t index; } ;
struct file {int dummy; } ;
struct camera_data {size_t num_frames; TYPE_1__* buffers; } ;
struct TYPE_2__ {scalar_t__ status; } ;


 int DBG (char*,size_t) ;
 int EINVAL ;
 scalar_t__ FRAME_EMPTY ;
 scalar_t__ FRAME_READY ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static int cpia2_qbuf(struct file *file, void *fh, struct v4l2_buffer *buf)
{
 struct camera_data *cam = video_drvdata(file);

 if(buf->type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
    buf->memory != V4L2_MEMORY_MMAP ||
    buf->index >= cam->num_frames)
  return -EINVAL;

 DBG("QBUF #%d\n", buf->index);

 if(cam->buffers[buf->index].status == FRAME_READY)
  cam->buffers[buf->index].status = FRAME_EMPTY;

 return 0;
}
