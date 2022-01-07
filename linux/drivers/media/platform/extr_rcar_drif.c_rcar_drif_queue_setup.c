
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {unsigned int num_buffers; } ;
struct rcar_drif_sdr {TYPE_1__* fmt; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int buffersize; } ;


 unsigned int PAGE_ALIGN (int ) ;
 int rdrif_dbg (struct rcar_drif_sdr*,char*,unsigned int,unsigned int) ;
 struct rcar_drif_sdr* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int rcar_drif_queue_setup(struct vb2_queue *vq,
   unsigned int *num_buffers, unsigned int *num_planes,
   unsigned int sizes[], struct device *alloc_devs[])
{
 struct rcar_drif_sdr *sdr = vb2_get_drv_priv(vq);


 if (vq->num_buffers + *num_buffers < 16)
  *num_buffers = 16 - vq->num_buffers;

 *num_planes = 1;
 sizes[0] = PAGE_ALIGN(sdr->fmt->buffersize);
 rdrif_dbg(sdr, "num_bufs %d sizes[0] %d\n", *num_buffers, sizes[0]);

 return 0;
}
