
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {size_t* prioritytable; } ;
struct i40e_dcbx_config {size_t numapps; TYPE_1__ etscfg; struct i40e_dcb_app_priority_table* app; } ;
struct i40e_hw {struct i40e_dcbx_config local_dcbx_config; } ;
struct i40e_pf {struct i40e_hw hw; } ;
struct i40e_dcb_app_priority_table {scalar_t__ selector; scalar_t__ protocolid; size_t priority; } ;


 size_t BIT (size_t) ;
 scalar_t__ I40E_APP_PROTOID_ISCSI ;
 scalar_t__ I40E_APP_SEL_TCPIP ;

__attribute__((used)) static u8 i40e_get_iscsi_tc_map(struct i40e_pf *pf)
{
 struct i40e_dcb_app_priority_table app;
 struct i40e_hw *hw = &pf->hw;
 u8 enabled_tc = 1;
 u8 tc, i;

 struct i40e_dcbx_config *dcbcfg = &hw->local_dcbx_config;

 for (i = 0; i < dcbcfg->numapps; i++) {
  app = dcbcfg->app[i];
  if (app.selector == I40E_APP_SEL_TCPIP &&
      app.protocolid == I40E_APP_PROTOID_ISCSI) {
   tc = dcbcfg->etscfg.prioritytable[app.priority];
   enabled_tc |= BIT(tc);
   break;
  }
 }

 return enabled_tc;
}
