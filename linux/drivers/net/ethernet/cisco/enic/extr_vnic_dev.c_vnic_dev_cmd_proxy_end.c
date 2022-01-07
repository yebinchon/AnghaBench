
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev {scalar_t__ proxy_index; int proxy; } ;


 int PROXY_NONE ;

void vnic_dev_cmd_proxy_end(struct vnic_dev *vdev)
{
 vdev->proxy = PROXY_NONE;
 vdev->proxy_index = 0;
}
