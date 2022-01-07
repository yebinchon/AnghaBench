
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_video {unsigned int max_compressed_size; } ;


 int EINVAL ;
 struct aspeed_video* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int aspeed_video_queue_setup(struct vb2_queue *q,
        unsigned int *num_buffers,
        unsigned int *num_planes,
        unsigned int sizes[],
        struct device *alloc_devs[])
{
 struct aspeed_video *video = vb2_get_drv_priv(q);

 if (*num_planes) {
  if (sizes[0] < video->max_compressed_size)
   return -EINVAL;

  return 0;
 }

 *num_planes = 1;
 sizes[0] = video->max_compressed_size;

 return 0;
}
