
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xvip_video_format {int dummy; } ;
struct xvip_dma {struct xvip_video_format const* fmtinfo; int format; int queue; } ;
struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct v4l2_fh {int vdev; } ;
struct file {struct v4l2_fh* private_data; } ;


 int EBUSY ;
 int __xvip_dma_try_format (struct xvip_dma*,int *,struct xvip_video_format const**) ;
 struct xvip_dma* to_xvip_dma (int ) ;
 scalar_t__ vb2_is_busy (int *) ;

__attribute__((used)) static int
xvip_dma_set_format(struct file *file, void *fh, struct v4l2_format *format)
{
 struct v4l2_fh *vfh = file->private_data;
 struct xvip_dma *dma = to_xvip_dma(vfh->vdev);
 const struct xvip_video_format *info;

 __xvip_dma_try_format(dma, &format->fmt.pix, &info);

 if (vb2_is_busy(&dma->queue))
  return -EBUSY;

 dma->format = format->fmt.pix;
 dma->fmtinfo = info;

 return 0;
}
