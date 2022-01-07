
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 unsigned int H264_VLC_BUF_SIZE ;

__attribute__((used)) static int tw5864_queue_setup(struct vb2_queue *q, unsigned int *num_buffers,
         unsigned int *num_planes, unsigned int sizes[],
         struct device *alloc_ctxs[])
{
 if (*num_planes)
  return sizes[0] < H264_VLC_BUF_SIZE ? -EINVAL : 0;

 sizes[0] = H264_VLC_BUF_SIZE;
 *num_planes = 1;

 return 0;
}
