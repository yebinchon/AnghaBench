
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_adapter {int cfg_num_rx_irqs; int if_handle; void* uc_list; void* mc_list; void* pmac_id; } ;


 int BE_IF_FLAGS_DEFQ_RSS ;
 int BE_IF_FLAGS_RSS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int be_cmd_if_create (struct be_adapter*,int,int,int *,int ) ;
 int be_if_cap_flags (struct be_adapter*) ;
 int be_max_mc (struct be_adapter*) ;
 int be_max_uc (struct be_adapter*) ;
 void* kcalloc (int ,int,int ) ;

__attribute__((used)) static int be_if_create(struct be_adapter *adapter)
{
 u32 en_flags = BE_IF_FLAGS_RSS | BE_IF_FLAGS_DEFQ_RSS;
 u32 cap_flags = be_if_cap_flags(adapter);
 int status;


 adapter->pmac_id = kcalloc(be_max_uc(adapter),
       sizeof(*adapter->pmac_id), GFP_KERNEL);
 if (!adapter->pmac_id)
  return -ENOMEM;

 adapter->mc_list = kcalloc(be_max_mc(adapter),
       sizeof(*adapter->mc_list), GFP_KERNEL);
 if (!adapter->mc_list)
  return -ENOMEM;

 adapter->uc_list = kcalloc(be_max_uc(adapter),
       sizeof(*adapter->uc_list), GFP_KERNEL);
 if (!adapter->uc_list)
  return -ENOMEM;

 if (adapter->cfg_num_rx_irqs == 1)
  cap_flags &= ~(BE_IF_FLAGS_DEFQ_RSS | BE_IF_FLAGS_RSS);

 en_flags &= cap_flags;

 status = be_cmd_if_create(adapter, be_if_cap_flags(adapter), en_flags,
      &adapter->if_handle, 0);

 if (status)
  return status;

 return 0;
}
