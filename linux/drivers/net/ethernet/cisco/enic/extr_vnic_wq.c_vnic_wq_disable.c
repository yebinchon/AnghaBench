
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_wq {int index; TYPE_1__* ctrl; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;
struct TYPE_2__ {int running; int enable; } ;


 int ETIMEDOUT ;
 int ioread32 (int *) ;
 int iowrite32 (int ,int *) ;
 int udelay (int) ;
 int vdev_neterr (struct vnic_dev*,char*,int ) ;

int vnic_wq_disable(struct vnic_wq *wq)
{
 unsigned int wait;
 struct vnic_dev *vdev = wq->vdev;

 iowrite32(0, &wq->ctrl->enable);


 for (wait = 0; wait < 1000; wait++) {
  if (!(ioread32(&wq->ctrl->running)))
   return 0;
  udelay(10);
 }

 vdev_neterr(vdev, "Failed to disable WQ[%d]\n", wq->index);

 return -ETIMEDOUT;
}
