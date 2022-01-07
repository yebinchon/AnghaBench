
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int * uc_list; int * mc_list; int * pmac_id; int if_handle; } ;


 int be_cmd_if_destroy (struct be_adapter*,int ,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void be_if_destroy(struct be_adapter *adapter)
{
 be_cmd_if_destroy(adapter, adapter->if_handle, 0);

 kfree(adapter->pmac_id);
 adapter->pmac_id = ((void*)0);

 kfree(adapter->mc_list);
 adapter->mc_list = ((void*)0);

 kfree(adapter->uc_list);
 adapter->uc_list = ((void*)0);
}
