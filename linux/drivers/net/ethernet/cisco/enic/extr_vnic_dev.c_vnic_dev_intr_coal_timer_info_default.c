
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mul; int div; int max_usec; } ;
struct vnic_dev {TYPE_1__ intr_coal_timer_info; } ;


 int vnic_dev_intr_coal_timer_hw_to_usec (struct vnic_dev*,int) ;

void vnic_dev_intr_coal_timer_info_default(struct vnic_dev *vdev)
{

 vdev->intr_coal_timer_info.mul = 2;
 vdev->intr_coal_timer_info.div = 3;
 vdev->intr_coal_timer_info.max_usec =
  vnic_dev_intr_coal_timer_hw_to_usec(vdev, 0xffff);
}
