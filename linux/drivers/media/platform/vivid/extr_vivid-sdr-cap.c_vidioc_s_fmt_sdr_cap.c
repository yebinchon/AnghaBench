
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct vivid_dev {scalar_t__ sdr_pixelformat; int sdr_buffersize; struct vb2_queue vb_sdr_cap_q; } ;
struct TYPE_5__ {scalar_t__ pixelformat; int buffersize; int reserved; } ;
struct TYPE_6__ {TYPE_1__ sdr; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_7__ {scalar_t__ pixelformat; int buffersize; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int EBUSY ;
 TYPE_3__* formats ;
 int memset (int ,int ,int) ;
 scalar_t__ vb2_is_busy (struct vb2_queue*) ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vidioc_s_fmt_sdr_cap(struct file *file, void *fh, struct v4l2_format *f)
{
 struct vivid_dev *dev = video_drvdata(file);
 struct vb2_queue *q = &dev->vb_sdr_cap_q;
 int i;

 if (vb2_is_busy(q))
  return -EBUSY;

 memset(f->fmt.sdr.reserved, 0, sizeof(f->fmt.sdr.reserved));
 for (i = 0; i < ARRAY_SIZE(formats); i++) {
  if (formats[i].pixelformat == f->fmt.sdr.pixelformat) {
   dev->sdr_pixelformat = formats[i].pixelformat;
   dev->sdr_buffersize = formats[i].buffersize;
   f->fmt.sdr.buffersize = formats[i].buffersize;
   return 0;
  }
 }
 dev->sdr_pixelformat = formats[0].pixelformat;
 dev->sdr_buffersize = formats[0].buffersize;
 f->fmt.sdr.pixelformat = formats[0].pixelformat;
 f->fmt.sdr.buffersize = formats[0].buffersize;
 return 0;
}
