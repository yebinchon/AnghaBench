
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int div; int mul; } ;
struct vnic_dev {TYPE_1__ intr_coal_timer_info; } ;



u32 vnic_dev_intr_coal_timer_hw_to_usec(struct vnic_dev *vdev, u32 hw_cycles)
{
 return (hw_cycles * vdev->intr_coal_timer_info.div) /
  vdev->intr_coal_timer_info.mul;
}
