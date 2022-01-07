
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev {int dummy; } ;


 int CMD_ENABLE2 ;
 int vnic_dev_cmd_status (struct vnic_dev*,int ,int*) ;

int vnic_dev_enable2_done(struct vnic_dev *vdev, int *status)
{
 return vnic_dev_cmd_status(vdev, CMD_ENABLE2, status);
}
