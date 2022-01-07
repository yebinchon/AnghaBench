
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vnic_dev {int proxy_index; int proxy; } ;


 int PROXY_BY_INDEX ;

void vnic_dev_cmd_proxy_by_index_start(struct vnic_dev *vdev, u16 index)
{
 vdev->proxy = PROXY_BY_INDEX;
 vdev->proxy_index = index;
}
