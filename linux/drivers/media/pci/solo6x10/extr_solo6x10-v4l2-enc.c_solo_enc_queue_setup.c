
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct device {int dummy; } ;


 unsigned int FRAME_BUF_SIZE ;
 unsigned int MIN_VID_BUFFERS ;

__attribute__((used)) static int solo_enc_queue_setup(struct vb2_queue *q,
    unsigned int *num_buffers,
    unsigned int *num_planes, unsigned int sizes[],
    struct device *alloc_devs[])
{
 sizes[0] = FRAME_BUF_SIZE;
 *num_planes = 1;

 if (*num_buffers < MIN_VID_BUFFERS)
  *num_buffers = MIN_VID_BUFFERS;

 return 0;
}
