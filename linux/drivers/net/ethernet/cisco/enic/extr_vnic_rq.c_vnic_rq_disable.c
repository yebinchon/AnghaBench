
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_rq {int index; TYPE_1__* ctrl; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;
struct TYPE_2__ {int running; int enable; } ;


 int ETIMEDOUT ;
 int ioread32 (int *) ;
 int iowrite32 (int ,int *) ;
 int vdev_neterr (struct vnic_dev*,char*,int ) ;

int vnic_rq_disable(struct vnic_rq *rq)
{
 unsigned int wait;
 struct vnic_dev *vdev = rq->vdev;
 int i;





 for (i = 0; i < 2; i++) {
  iowrite32(0, &rq->ctrl->enable);


  for (wait = 20000; wait > 0; wait--)
   if (!ioread32(&rq->ctrl->running))
    break;
  if (!wait) {
   vdev_neterr(vdev, "Failed to disable RQ[%d]\n",
        rq->index);

   return -ETIMEDOUT;
  }
 }

 return 0;
}
