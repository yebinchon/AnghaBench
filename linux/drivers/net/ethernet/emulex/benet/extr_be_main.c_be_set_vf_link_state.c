
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct be_adapter {int num_vfs; TYPE_2__* vf_cfg; TYPE_1__* pdev; } ;
struct TYPE_4__ {int plink_tracking; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int EPERM ;
 int be_cmd_set_logical_link_config (struct be_adapter*,int,int) ;
 int be_cmd_status (int) ;
 int dev_err (int *,char*,int,int) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int sriov_enabled (struct be_adapter*) ;

__attribute__((used)) static int be_set_vf_link_state(struct net_device *netdev, int vf,
    int link_state)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 int status;

 if (!sriov_enabled(adapter))
  return -EPERM;

 if (vf >= adapter->num_vfs)
  return -EINVAL;

 status = be_cmd_set_logical_link_config(adapter, link_state, vf+1);
 if (status) {
  dev_err(&adapter->pdev->dev,
   "Link state change on VF %d failed: %#x\n", vf, status);
  return be_cmd_status(status);
 }

 adapter->vf_cfg[vf].plink_tracking = link_state;

 return 0;
}
