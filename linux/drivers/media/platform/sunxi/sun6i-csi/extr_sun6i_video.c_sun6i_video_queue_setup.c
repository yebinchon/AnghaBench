
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_4__ {unsigned int sizeimage; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct sun6i_video {TYPE_3__ fmt; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct sun6i_video* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int sun6i_video_queue_setup(struct vb2_queue *vq,
       unsigned int *nbuffers,
       unsigned int *nplanes,
       unsigned int sizes[],
       struct device *alloc_devs[])
{
 struct sun6i_video *video = vb2_get_drv_priv(vq);
 unsigned int size = video->fmt.fmt.pix.sizeimage;

 if (*nplanes)
  return sizes[0] < size ? -EINVAL : 0;

 *nplanes = 1;
 sizes[0] = size;

 return 0;
}
