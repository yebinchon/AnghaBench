
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct be_vf_cfg {int spoofchk; int if_handle; } ;
struct be_adapter {int num_vfs; TYPE_1__* pdev; struct be_vf_cfg* vf_cfg; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BEx_chip (struct be_adapter*) ;
 int DISABLE_MAC_SPOOFCHK ;
 int EINVAL ;
 int ENABLE_MAC_SPOOFCHK ;
 int EOPNOTSUPP ;
 int EPERM ;
 int be_cmd_set_hsw_config (struct be_adapter*,int ,int,int ,int ,int ) ;
 int be_cmd_status (int) ;
 int dev_err (int *,char*,int,int) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int sriov_enabled (struct be_adapter*) ;

__attribute__((used)) static int be_set_vf_spoofchk(struct net_device *netdev, int vf, bool enable)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 struct be_vf_cfg *vf_cfg = &adapter->vf_cfg[vf];
 u8 spoofchk;
 int status;

 if (!sriov_enabled(adapter))
  return -EPERM;

 if (vf >= adapter->num_vfs)
  return -EINVAL;

 if (BEx_chip(adapter))
  return -EOPNOTSUPP;

 if (enable == vf_cfg->spoofchk)
  return 0;

 spoofchk = enable ? ENABLE_MAC_SPOOFCHK : DISABLE_MAC_SPOOFCHK;

 status = be_cmd_set_hsw_config(adapter, 0, vf + 1, vf_cfg->if_handle,
           0, spoofchk);
 if (status) {
  dev_err(&adapter->pdev->dev,
   "Spoofchk change on VF %d failed: %#x\n", vf, status);
  return be_cmd_status(status);
 }

 vf_cfg->spoofchk = enable;
 return 0;
}
