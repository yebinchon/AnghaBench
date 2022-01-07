
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_device {int buffer_queue; int v4l2_dev; } ;
struct v4l2_buffer {scalar_t__ type; } ;
struct file {int f_flags; } ;


 int EINVAL ;
 int O_NONBLOCK ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_err (int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int videobuf_dqbuf (int *,struct v4l2_buffer*,int) ;

__attribute__((used)) static int vpfe_dqbuf(struct file *file, void *priv,
        struct v4l2_buffer *buf)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_dqbuf\n");

 if (V4L2_BUF_TYPE_VIDEO_CAPTURE != buf->type) {
  v4l2_err(&vpfe_dev->v4l2_dev, "Invalid buf type\n");
  return -EINVAL;
 }
 return videobuf_dqbuf(&vpfe_dev->buffer_queue,
          buf, file->f_flags & O_NONBLOCK);
}
