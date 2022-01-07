
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mtu; } ;
struct vnic_dev {TYPE_1__ notify_copy; } ;


 int vnic_dev_notify_ready (struct vnic_dev*) ;

u32 vnic_dev_mtu(struct vnic_dev *vdev)
{
 if (!vnic_dev_notify_ready(vdev))
  return 0;

 return vdev->notify_copy.mtu;
}
