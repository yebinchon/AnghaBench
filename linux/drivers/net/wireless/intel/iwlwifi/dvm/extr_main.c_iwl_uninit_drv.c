
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int wowlan_sram; int noa_data; int beacon_cmd; int scan_cmd; } ;


 int iwl_calib_free_results (struct iwl_priv*) ;
 int kfree (int ) ;
 int rcu_dereference_raw (int ) ;

__attribute__((used)) static void iwl_uninit_drv(struct iwl_priv *priv)
{
 kfree(priv->scan_cmd);
 kfree(priv->beacon_cmd);
 kfree(rcu_dereference_raw(priv->noa_data));
 iwl_calib_free_results(priv);



}
