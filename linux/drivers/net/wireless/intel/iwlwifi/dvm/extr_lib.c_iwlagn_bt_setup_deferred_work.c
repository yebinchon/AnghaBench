
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int bt_traffic_change_work; } ;


 int INIT_WORK (int *,int ) ;
 int iwlagn_bt_traffic_change_work ;

void iwlagn_bt_setup_deferred_work(struct iwl_priv *priv)
{
 INIT_WORK(&priv->bt_traffic_change_work,
    iwlagn_bt_traffic_change_work);
}
