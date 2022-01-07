
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {unsigned int num_buffers; } ;
struct hackrf_dev {int dev; int buffersize; } ;
struct device {int dummy; } ;


 unsigned int PAGE_ALIGN (int ) ;
 int dev_dbg (int ,char*,unsigned int,...) ;
 struct hackrf_dev* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int hackrf_queue_setup(struct vb2_queue *vq,
  unsigned int *nbuffers,
  unsigned int *nplanes, unsigned int sizes[], struct device *alloc_devs[])
{
 struct hackrf_dev *dev = vb2_get_drv_priv(vq);

 dev_dbg(dev->dev, "nbuffers=%d\n", *nbuffers);


 if (vq->num_buffers + *nbuffers < 8)
  *nbuffers = 8 - vq->num_buffers;
 *nplanes = 1;
 sizes[0] = PAGE_ALIGN(dev->buffersize);

 dev_dbg(dev->dev, "nbuffers=%d sizes[0]=%d\n", *nbuffers, sizes[0]);
 return 0;
}
