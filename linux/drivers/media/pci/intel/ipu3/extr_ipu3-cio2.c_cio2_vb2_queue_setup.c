
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {unsigned int num_planes; TYPE_1__* plane_fmt; } ;
struct cio2_queue {scalar_t__ bufs_next; scalar_t__ bufs_first; int bufs_queued; int * fbpt; int ** bufs; TYPE_2__ format; } ;
struct cio2_device {TYPE_3__* pci_dev; } ;
struct TYPE_6__ {struct device dev; } ;
struct TYPE_4__ {unsigned int sizeimage; } ;


 unsigned int CIO2_MAX_BUFFERS ;
 unsigned int CIO2_MAX_LOPS ;
 int atomic_set (int *,int ) ;
 int cio2_fbpt_entry_init_dummy (struct cio2_device*,int *) ;
 unsigned int clamp_val (unsigned int,int,unsigned int) ;
 struct cio2_device* vb2_get_drv_priv (struct vb2_queue*) ;
 struct cio2_queue* vb2q_to_cio2_queue (struct vb2_queue*) ;

__attribute__((used)) static int cio2_vb2_queue_setup(struct vb2_queue *vq,
    unsigned int *num_buffers,
    unsigned int *num_planes,
    unsigned int sizes[],
    struct device *alloc_devs[])
{
 struct cio2_device *cio2 = vb2_get_drv_priv(vq);
 struct cio2_queue *q = vb2q_to_cio2_queue(vq);
 unsigned int i;

 *num_planes = q->format.num_planes;

 for (i = 0; i < *num_planes; ++i) {
  sizes[i] = q->format.plane_fmt[i].sizeimage;
  alloc_devs[i] = &cio2->pci_dev->dev;
 }

 *num_buffers = clamp_val(*num_buffers, 1, CIO2_MAX_BUFFERS);


 for (i = 0; i < CIO2_MAX_BUFFERS; i++) {
  q->bufs[i] = ((void*)0);
  cio2_fbpt_entry_init_dummy(cio2, &q->fbpt[i * CIO2_MAX_LOPS]);
 }
 atomic_set(&q->bufs_queued, 0);
 q->bufs_first = 0;
 q->bufs_next = 0;

 return 0;
}
