
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct vnic_dev {int dummy; } ;


 int CMD_CAPABILITY ;
 int CMD_NIC_CFG ;
 int EOPNOTSUPP ;
 int NIC_CFG_RSS_HASH_TYPE_MASK_FIELD ;
 int NIC_CFG_RSS_HASH_TYPE_SHIFT ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int*,int*,int) ;

int vnic_dev_capable_rss_hash_type(struct vnic_dev *vdev, u8 *rss_hash_type)
{
 u64 a0 = CMD_NIC_CFG, a1 = 0;
 int wait = 1000;
 int err;

 err = vnic_dev_cmd(vdev, CMD_CAPABILITY, &a0, &a1, wait);



 if (err || (a0 != 1))
  return -EOPNOTSUPP;

 a1 = (a1 >> NIC_CFG_RSS_HASH_TYPE_SHIFT) &
      NIC_CFG_RSS_HASH_TYPE_MASK_FIELD;

 *rss_hash_type = (u8)a1;

 return 0;
}
