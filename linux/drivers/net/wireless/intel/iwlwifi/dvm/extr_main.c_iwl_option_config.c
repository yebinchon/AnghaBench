
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int dummy; } ;


 int IWL_INFO (struct iwl_priv*,char*) ;

__attribute__((used)) static void iwl_option_config(struct iwl_priv *priv)
{



 IWL_INFO(priv, "CONFIG_IWLWIFI_DEBUG disabled\n");





 IWL_INFO(priv, "CONFIG_IWLWIFI_DEBUGFS disabled\n");





 IWL_INFO(priv, "CONFIG_IWLWIFI_DEVICE_TRACING disabled\n");

}
