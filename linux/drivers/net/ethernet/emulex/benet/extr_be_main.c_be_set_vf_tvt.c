
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct be_vf_cfg {int if_handle; int privileges; } ;
struct be_adapter {TYPE_1__* pdev; struct be_vf_cfg* vf_cfg; } ;
struct TYPE_2__ {int dev; } ;


 int BE_NUM_VLANS_SUPPORTED ;
 int BE_PRIV_FILTMGMT ;
 int be_cmd_set_fn_privileges (struct be_adapter*,int,int) ;
 int be_cmd_set_hsw_config (struct be_adapter*,scalar_t__,int,int,int ,int ) ;
 int be_cmd_vlan_config (struct be_adapter*,int,scalar_t__*,int,int) ;
 int dev_info (int *,char*,int) ;

__attribute__((used)) static int be_set_vf_tvt(struct be_adapter *adapter, int vf, u16 vlan)
{
 struct be_vf_cfg *vf_cfg = &adapter->vf_cfg[vf];
 u16 vids[BE_NUM_VLANS_SUPPORTED];
 int vf_if_id = vf_cfg->if_handle;
 int status;


 status = be_cmd_set_hsw_config(adapter, vlan, vf + 1, vf_if_id, 0, 0);
 if (status)
  return status;


 vids[0] = 0;
 status = be_cmd_vlan_config(adapter, vf_if_id, vids, 1, vf + 1);
 if (!status)
  dev_info(&adapter->pdev->dev,
    "Cleared guest VLANs on VF%d", vf);


 if (vf_cfg->privileges & BE_PRIV_FILTMGMT) {
  status = be_cmd_set_fn_privileges(adapter, vf_cfg->privileges &
        ~BE_PRIV_FILTMGMT, vf + 1);
  if (!status)
   vf_cfg->privileges &= ~BE_PRIV_FILTMGMT;
 }
 return 0;
}
