
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct be_resources {void* max_vfs; int member_0; } ;
struct be_adapter {int num_vfs; TYPE_1__* pdev; struct be_resources pool_res; } ;
struct TYPE_3__ {int dev; } ;


 int ACTIVE_PROFILE_TYPE ;
 scalar_t__ BE3_chip (struct be_adapter*) ;
 int MAX_VFS ;
 int RESOURCE_LIMITS ;
 int be_calculate_pf_pool_rss_tables (struct be_adapter*) ;
 int be_cmd_get_profile_config (struct be_adapter*,struct be_resources*,int *,int ,int ,int ) ;
 int be_max_pf_pool_rss_tables (struct be_adapter*) ;
 scalar_t__ be_max_vfs (struct be_adapter*) ;
 int dev_info (int *,char*,int) ;
 void* min (int ,int) ;
 int pci_num_vf (TYPE_1__*) ;
 void* pci_sriov_get_totalvfs (TYPE_1__*) ;
 scalar_t__ skyhawk_chip (struct be_adapter*) ;

__attribute__((used)) static int be_get_sriov_config(struct be_adapter *adapter)
{
 struct be_resources res = {0};
 int max_vfs, old_vfs;

 be_cmd_get_profile_config(adapter, &res, ((void*)0), ACTIVE_PROFILE_TYPE,
      RESOURCE_LIMITS, 0);


 if (BE3_chip(adapter) && !res.max_vfs) {
  max_vfs = pci_sriov_get_totalvfs(adapter->pdev);
  res.max_vfs = max_vfs > 0 ? min(MAX_VFS, max_vfs) : 0;
 }

 adapter->pool_res = res;





 old_vfs = pci_num_vf(adapter->pdev);
 if (old_vfs) {
  dev_info(&adapter->pdev->dev, "%d VFs are already enabled\n",
    old_vfs);

  adapter->pool_res.max_vfs =
   pci_sriov_get_totalvfs(adapter->pdev);
  adapter->num_vfs = old_vfs;
 }

 if (skyhawk_chip(adapter) && be_max_vfs(adapter) && !old_vfs) {
  be_calculate_pf_pool_rss_tables(adapter);
  dev_info(&adapter->pdev->dev,
    "RSS can be enabled for all VFs if num_vfs <= %d\n",
    be_max_pf_pool_rss_tables(adapter));
 }
 return 0;
}
