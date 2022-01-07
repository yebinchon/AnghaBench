
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_priv {scalar_t__ bt_traffic_load; scalar_t__ bt_full_concurrent; TYPE_2__* lib; } ;
struct TYPE_4__ {TYPE_1__* bt_params; } ;
struct TYPE_3__ {scalar_t__ advanced_bt_coexist; } ;


 scalar_t__ IWL_BT_COEX_TRAFFIC_LOAD_HIGH ;
 int IWL_NUM_RX_CHAINS_MULTIPLE ;
 int IWL_NUM_RX_CHAINS_SINGLE ;
 scalar_t__ is_single_rx_stream (struct iwl_priv*) ;

__attribute__((used)) static int iwl_get_active_rx_chain_count(struct iwl_priv *priv)
{
 if (priv->lib->bt_params &&
     priv->lib->bt_params->advanced_bt_coexist &&
     (priv->bt_full_concurrent ||
      priv->bt_traffic_load >= IWL_BT_COEX_TRAFFIC_LOAD_HIGH)) {




  return IWL_NUM_RX_CHAINS_SINGLE;
 }

 if (is_single_rx_stream(priv))
  return IWL_NUM_RX_CHAINS_SINGLE;
 else
  return IWL_NUM_RX_CHAINS_MULTIPLE;
}
