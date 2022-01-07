
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct vnic_dev {int dummy; } ;


 int CMD_GET_SUPP_FEATURE_VER ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int *,int *,int) ;

int vnic_dev_get_supported_feature_ver(struct vnic_dev *vdev, u8 feature,
           u64 *supported_versions, u64 *a1)
{
 u64 a0 = feature;
 int wait = 1000;
 int ret;

 ret = vnic_dev_cmd(vdev, CMD_GET_SUPP_FEATURE_VER, &a0, a1, wait);
 if (!ret)
  *supported_versions = a0;

 return ret;
}
