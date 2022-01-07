
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int if_flags; int dev_mac; int * pmac_id; } ;


 int BE_IF_ALL_FILT_FLAGS ;
 int BE_PRIV_FILTMGMT ;
 int BEx_chip (struct be_adapter*) ;
 int OFF ;
 int be_clear_mc_list (struct be_adapter*) ;
 int be_clear_uc_list (struct be_adapter*) ;
 int be_cmd_rx_filter (struct be_adapter*,int ,int ) ;
 int be_dev_mac_del (struct be_adapter*,int ) ;
 int be_virtfn (struct be_adapter*) ;
 scalar_t__ check_privilege (struct be_adapter*,int ) ;
 int eth_zero_addr (int ) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;

__attribute__((used)) static void be_disable_if_filters(struct be_adapter *adapter)
{

 if (!BEx_chip(adapter) || !be_virtfn(adapter) ||
     check_privilege(adapter, BE_PRIV_FILTMGMT)) {
  be_dev_mac_del(adapter, adapter->pmac_id[0]);
  eth_zero_addr(adapter->dev_mac);
 }

 be_clear_uc_list(adapter);
 be_clear_mc_list(adapter);
 if (lancer_chip(adapter)) {
  be_cmd_rx_filter(adapter, BE_IF_ALL_FILT_FLAGS, OFF);
  adapter->if_flags &= ~BE_IF_ALL_FILT_FLAGS;
 }
}
