
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct be_adapter {int uc_macs; int * pmac_id; int if_handle; TYPE_1__* uc_list; } ;
struct TYPE_2__ {int mac; } ;


 int be_cmd_pmac_add (struct be_adapter*,int *,int ,int *,int ) ;
 scalar_t__ ether_addr_equal (int ,int *) ;

__attribute__((used)) static int be_dev_mac_add(struct be_adapter *adapter, u8 *mac)
{
 int i;


 for (i = 0; i < adapter->uc_macs; i++) {
  if (ether_addr_equal(adapter->uc_list[i].mac, mac)) {

   adapter->pmac_id[0] = adapter->pmac_id[i + 1];
   return 0;
  }
 }

 return be_cmd_pmac_add(adapter, mac, adapter->if_handle,
          &adapter->pmac_id[0], 0);
}
