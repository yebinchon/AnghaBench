
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int* pmac_id; int if_handle; } ;


 int be_cmd_pmac_del (struct be_adapter*,int ,int,int ) ;

__attribute__((used)) static void be_uc_mac_del(struct be_adapter *adapter, int pmac_id)
{
 if (pmac_id == adapter->pmac_id[0])
  return;

 be_cmd_pmac_del(adapter, adapter->if_handle, pmac_id, 0);
}
