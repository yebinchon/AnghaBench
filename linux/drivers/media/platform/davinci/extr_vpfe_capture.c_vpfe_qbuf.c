
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_fh {int io_allowed; } ;
struct vpfe_device {int buffer_queue; int v4l2_dev; } ;
struct v4l2_buffer {scalar_t__ type; } ;
struct file {struct vpfe_fh* private_data; } ;


 int EACCES ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_err (int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int videobuf_qbuf (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int vpfe_qbuf(struct file *file, void *priv,
       struct v4l2_buffer *p)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 struct vpfe_fh *fh = file->private_data;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_qbuf\n");

 if (V4L2_BUF_TYPE_VIDEO_CAPTURE != p->type) {
  v4l2_err(&vpfe_dev->v4l2_dev, "Invalid buf type\n");
  return -EINVAL;
 }





 if (!fh->io_allowed) {
  v4l2_err(&vpfe_dev->v4l2_dev, "fh->io_allowed\n");
  return -EACCES;
 }
 return videobuf_qbuf(&vpfe_dev->buffer_queue, p);
}
