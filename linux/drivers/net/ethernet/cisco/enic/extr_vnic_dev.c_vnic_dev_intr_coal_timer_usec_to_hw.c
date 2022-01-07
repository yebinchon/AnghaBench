
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mul; int div; } ;
struct vnic_dev {TYPE_1__ intr_coal_timer_info; } ;



u32 vnic_dev_intr_coal_timer_usec_to_hw(struct vnic_dev *vdev, u32 usec)
{
 return (usec * vdev->intr_coal_timer_info.mul) /
  vdev->intr_coal_timer_info.div;
}
