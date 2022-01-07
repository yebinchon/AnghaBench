
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_meta_format {int dataformat; } ;
struct TYPE_3__ {struct v4l2_meta_format meta; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct v4l2_fh {int vdev; } ;
struct TYPE_4__ {int format; } ;
struct uvc_streaming {int mutex; TYPE_2__ meta; int queue; } ;
struct file {struct v4l2_fh* private_data; } ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uvc_meta_v4l2_try_format (struct file*,void*,struct v4l2_format*) ;
 scalar_t__ uvc_queue_allocated (int *) ;
 struct uvc_streaming* video_get_drvdata (int ) ;

__attribute__((used)) static int uvc_meta_v4l2_set_format(struct file *file, void *fh,
        struct v4l2_format *format)
{
 struct v4l2_fh *vfh = file->private_data;
 struct uvc_streaming *stream = video_get_drvdata(vfh->vdev);
 struct v4l2_meta_format *fmt = &format->fmt.meta;
 int ret;

 ret = uvc_meta_v4l2_try_format(file, fh, format);
 if (ret < 0)
  return ret;






 mutex_lock(&stream->mutex);

 if (uvc_queue_allocated(&stream->queue))
  ret = -EBUSY;
 else
  stream->meta.format = fmt->dataformat;

 mutex_unlock(&stream->mutex);

 return ret;
}
