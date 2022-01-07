
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int config; int channel; int bssid; int capability; int rates_mask; int essid; int essid_len; } ;


 int CAP_PRIVACY_ON ;
 int CFG_STATIC_BSSID ;
 int CFG_STATIC_CHANNEL ;
 int CFG_STATIC_ESSID ;
 int IPW_DEBUG_INFO (char*,...) ;

__attribute__((used)) static void ipw_debug_config(struct ipw_priv *priv)
{
 IPW_DEBUG_INFO("Scan completed, no valid APs matched "
         "[CFG 0x%08X]\n", priv->config);
 if (priv->config & CFG_STATIC_CHANNEL)
  IPW_DEBUG_INFO("Channel locked to %d\n", priv->channel);
 else
  IPW_DEBUG_INFO("Channel unlocked.\n");
 if (priv->config & CFG_STATIC_ESSID)
  IPW_DEBUG_INFO("ESSID locked to '%*pE'\n",
          priv->essid_len, priv->essid);
 else
  IPW_DEBUG_INFO("ESSID unlocked.\n");
 if (priv->config & CFG_STATIC_BSSID)
  IPW_DEBUG_INFO("BSSID locked to %pM\n", priv->bssid);
 else
  IPW_DEBUG_INFO("BSSID unlocked.\n");
 if (priv->capability & CAP_PRIVACY_ON)
  IPW_DEBUG_INFO("PRIVACY on\n");
 else
  IPW_DEBUG_INFO("PRIVACY off\n");
 IPW_DEBUG_INFO("RATE MASK: 0x%08X\n", priv->rates_mask);
}
