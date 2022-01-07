
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int sizeimage; } ;
struct vpbe_layer {TYPE_1__ pix_fmt; TYPE_2__* disp_dev; } ;
struct vpbe_device {int v4l2_dev; } ;
struct vb2_queue {scalar_t__ num_buffers; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct vpbe_device* vpbe_dev; } ;


 int EINVAL ;
 scalar_t__ VPBE_DEFAULT_NUM_BUFS ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpbe_layer* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int
vpbe_buffer_queue_setup(struct vb2_queue *vq,
   unsigned int *nbuffers, unsigned int *nplanes,
   unsigned int sizes[], struct device *alloc_devs[])

{

 struct vpbe_layer *layer = vb2_get_drv_priv(vq);
 struct vpbe_device *vpbe_dev = layer->disp_dev->vpbe_dev;

 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev, "vpbe_buffer_setup\n");


 if (vq->num_buffers + *nbuffers < VPBE_DEFAULT_NUM_BUFS)
  *nbuffers = VPBE_DEFAULT_NUM_BUFS - vq->num_buffers;

 if (*nplanes)
  return sizes[0] < layer->pix_fmt.sizeimage ? -EINVAL : 0;

 *nplanes = 1;
 sizes[0] = layer->pix_fmt.sizeimage;

 return 0;
}
