
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_resources {int max_vlans; int max_tx_qs; int max_evt_qs; int if_cap_flags; scalar_t__ max_rss_qs; scalar_t__ max_rx_qs; int member_0; int max_mcast_mac; int max_uc_mac; } ;
struct be_adapter {int port_num; int function_caps; scalar_t__ be3_native; int function_mode; int mc_type; scalar_t__ num_vfs; } ;


 int ACTIVE_PROFILE_TYPE ;
 scalar_t__ BE2_MAX_RSS_QS ;
 scalar_t__ BE2_chip (struct be_adapter*) ;
 int BE3_MAX_EVT_QS ;
 scalar_t__ BE3_MAX_RSS_QS ;
 void* BE3_MAX_TX_QS ;
 int BE3_SRIOV_MAX_EVT_QS ;
 int BE_FUNCTION_CAPS_RSS ;
 int BE_FUNCTION_CAPS_SUPER_NIC ;
 int BE_IF_CAP_FLAGS_WANT ;
 int BE_IF_FLAGS_DEFQ_RSS ;
 int BE_IF_FLAGS_RSS ;
 int BE_MAX_MC ;
 int BE_NUM_VLANS_SUPPORTED ;
 int BE_UC_PMAC_COUNT ;
 int BE_VF_UC_PMAC_COUNT ;
 int RESOURCE_LIMITS ;
 int be_cmd_get_profile_config (struct be_adapter*,struct be_resources*,int *,int ,int ,int ) ;
 int be_convert_mc_type (int ) ;
 scalar_t__ be_is_mc (struct be_adapter*) ;
 scalar_t__ be_is_qnq_mode (struct be_adapter*) ;
 scalar_t__ be_max_vfs (struct be_adapter*) ;
 scalar_t__ be_physfn (struct be_adapter*) ;
 scalar_t__ be_virtfn (struct be_adapter*) ;

__attribute__((used)) static void BEx_get_resources(struct be_adapter *adapter,
         struct be_resources *res)
{
 bool use_sriov = adapter->num_vfs ? 1 : 0;

 if (be_physfn(adapter))
  res->max_uc_mac = BE_UC_PMAC_COUNT;
 else
  res->max_uc_mac = BE_VF_UC_PMAC_COUNT;

 adapter->mc_type = be_convert_mc_type(adapter->function_mode);

 if (be_is_mc(adapter)) {



  if (be_is_qnq_mode(adapter))
   res->max_vlans = BE_NUM_VLANS_SUPPORTED/8;
  else



   res->max_vlans = (BE_NUM_VLANS_SUPPORTED / 4) - 1;
 } else {
  res->max_vlans = BE_NUM_VLANS_SUPPORTED;
 }

 res->max_mcast_mac = BE_MAX_MC;





 if (BE2_chip(adapter) || use_sriov || (adapter->port_num > 1) ||
     be_virtfn(adapter) ||
     (be_is_mc(adapter) &&
      !(adapter->function_caps & BE_FUNCTION_CAPS_RSS))) {
  res->max_tx_qs = 1;
 } else if (adapter->function_caps & BE_FUNCTION_CAPS_SUPER_NIC) {
  struct be_resources super_nic_res = {0};




  be_cmd_get_profile_config(adapter, &super_nic_res, ((void*)0),
       ACTIVE_PROFILE_TYPE, RESOURCE_LIMITS,
       0);

  res->max_tx_qs = super_nic_res.max_tx_qs ? : BE3_MAX_TX_QS;
 } else {
  res->max_tx_qs = BE3_MAX_TX_QS;
 }

 if ((adapter->function_caps & BE_FUNCTION_CAPS_RSS) &&
     !use_sriov && be_physfn(adapter))
  res->max_rss_qs = (adapter->be3_native) ?
        BE3_MAX_RSS_QS : BE2_MAX_RSS_QS;
 res->max_rx_qs = res->max_rss_qs + 1;

 if (be_physfn(adapter))
  res->max_evt_qs = (be_max_vfs(adapter) > 0) ?
     BE3_SRIOV_MAX_EVT_QS : BE3_MAX_EVT_QS;
 else
  res->max_evt_qs = 1;

 res->if_cap_flags = BE_IF_CAP_FLAGS_WANT;
 res->if_cap_flags &= ~BE_IF_FLAGS_DEFQ_RSS;
 if (!(adapter->function_caps & BE_FUNCTION_CAPS_RSS))
  res->if_cap_flags &= ~BE_IF_FLAGS_RSS;
}
