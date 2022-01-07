
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vnic_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct enic {int enic_api_lock; int devcmd_lock; struct vnic_dev* vdev; } ;
typedef enum vnic_devcmd_cmd { ____Placeholder_vnic_devcmd_cmd } vnic_devcmd_cmd ;


 struct enic* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 int vnic_dev_cmd (struct vnic_dev*,int,int *,int *,int) ;
 int vnic_dev_cmd_proxy_by_index_start (struct vnic_dev*,int) ;
 int vnic_dev_cmd_proxy_end (struct vnic_dev*) ;

int enic_api_devcmd_proxy_by_index(struct net_device *netdev, int vf,
 enum vnic_devcmd_cmd cmd, u64 *a0, u64 *a1, int wait)
{
 int err;
 struct enic *enic = netdev_priv(netdev);
 struct vnic_dev *vdev = enic->vdev;

 spin_lock(&enic->enic_api_lock);
 spin_lock_bh(&enic->devcmd_lock);

 vnic_dev_cmd_proxy_by_index_start(vdev, vf);
 err = vnic_dev_cmd(vdev, cmd, a0, a1, wait);
 vnic_dev_cmd_proxy_end(vdev);

 spin_unlock_bh(&enic->devcmd_lock);
 spin_unlock(&enic->enic_api_lock);

 return err;
}
