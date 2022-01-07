
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_5__ {unsigned int sizeimage; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct TYPE_4__ {TYPE_3__ fmt; } ;
struct isp_video_fh {TYPE_1__ format; struct isp_video* video; } ;
struct isp_video {int capture_mem; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int PAGE_ALIGN (unsigned int) ;
 unsigned int min (unsigned int,int) ;
 struct isp_video_fh* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int isp_video_queue_setup(struct vb2_queue *queue,
     unsigned int *count, unsigned int *num_planes,
     unsigned int sizes[], struct device *alloc_devs[])
{
 struct isp_video_fh *vfh = vb2_get_drv_priv(queue);
 struct isp_video *video = vfh->video;

 *num_planes = 1;

 sizes[0] = vfh->format.fmt.pix.sizeimage;
 if (sizes[0] == 0)
  return -EINVAL;

 *count = min(*count, video->capture_mem / PAGE_ALIGN(sizes[0]));

 return 0;
}
