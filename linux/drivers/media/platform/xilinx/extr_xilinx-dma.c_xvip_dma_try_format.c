
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xvip_dma {int dummy; } ;
struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct v4l2_fh {int vdev; } ;
struct file {struct v4l2_fh* private_data; } ;


 int __xvip_dma_try_format (struct xvip_dma*,int *,int *) ;
 struct xvip_dma* to_xvip_dma (int ) ;

__attribute__((used)) static int
xvip_dma_try_format(struct file *file, void *fh, struct v4l2_format *format)
{
 struct v4l2_fh *vfh = file->private_data;
 struct xvip_dma *dma = to_xvip_dma(vfh->vdev);

 __xvip_dma_try_format(dma, &format->fmt.pix, ((void*)0));
 return 0;
}
