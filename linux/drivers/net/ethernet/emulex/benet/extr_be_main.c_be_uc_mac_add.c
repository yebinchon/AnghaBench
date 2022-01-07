
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_adapter {int * pmac_id; int if_handle; TYPE_1__* uc_list; int dev_mac; } ;
struct TYPE_2__ {int mac; } ;


 int be_cmd_pmac_add (struct be_adapter*,int ,int ,int *,int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;

__attribute__((used)) static int be_uc_mac_add(struct be_adapter *adapter, int uc_idx)
{
 if (ether_addr_equal(adapter->uc_list[uc_idx].mac, adapter->dev_mac)) {
  adapter->pmac_id[uc_idx + 1] = adapter->pmac_id[0];
  return 0;
 }

 return be_cmd_pmac_add(adapter, adapter->uc_list[uc_idx].mac,
          adapter->if_handle,
          &adapter->pmac_id[uc_idx + 1], 0);
}
