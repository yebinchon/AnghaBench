
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pixelformat; } ;
struct xvip_dma {TYPE_1__ format; } ;
struct v4l2_fmtdesc {scalar_t__ index; int pixelformat; } ;
struct v4l2_fh {int vdev; } ;
struct file {struct v4l2_fh* private_data; } ;


 int EINVAL ;
 struct xvip_dma* to_xvip_dma (int ) ;

__attribute__((used)) static int
xvip_dma_enum_format(struct file *file, void *fh, struct v4l2_fmtdesc *f)
{
 struct v4l2_fh *vfh = file->private_data;
 struct xvip_dma *dma = to_xvip_dma(vfh->vdev);

 if (f->index > 0)
  return -EINVAL;

 f->pixelformat = dma->format.pixelformat;

 return 0;
}
