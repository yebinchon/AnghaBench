
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_vdev {int virtio_bh_work; int virtio_db; struct vop_device* vpdev; } ;
struct vop_device {TYPE_1__* hw_ops; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* ack_interrupt ) (struct vop_device*,int ) ;} ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;
 int stub1 (struct vop_device*,int ) ;

__attribute__((used)) static irqreturn_t _vop_virtio_intr_handler(int irq, void *data)
{
 struct vop_vdev *vdev = data;
 struct vop_device *vpdev = vdev->vpdev;

 vpdev->hw_ops->ack_interrupt(vpdev, vdev->virtio_db);
 schedule_work(&vdev->virtio_bh_work);
 return IRQ_HANDLED;
}
