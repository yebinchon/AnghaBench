
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int max_usec; } ;
struct vnic_dev {TYPE_1__ intr_coal_timer_info; } ;



u32 vnic_dev_get_intr_coal_timer_max(struct vnic_dev *vdev)
{
 return vdev->intr_coal_timer_info.max_usec;
}
