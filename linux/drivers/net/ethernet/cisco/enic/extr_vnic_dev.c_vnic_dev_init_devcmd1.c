
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev {int devcmd_rtn; int devcmd; } ;


 int ENODEV ;
 int RES_TYPE_DEVCMD ;
 int _vnic_dev_cmd ;
 int vnic_dev_get_res (struct vnic_dev*,int ,int ) ;

__attribute__((used)) static int vnic_dev_init_devcmd1(struct vnic_dev *vdev)
{
 vdev->devcmd = vnic_dev_get_res(vdev, RES_TYPE_DEVCMD, 0);
 if (!vdev->devcmd)
  return -ENODEV;
 vdev->devcmd_rtn = _vnic_dev_cmd;

 return 0;
}
