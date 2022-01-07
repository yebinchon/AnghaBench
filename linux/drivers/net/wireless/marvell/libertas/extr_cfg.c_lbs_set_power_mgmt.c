
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct lbs_private {int fwcapinfo; scalar_t__ psmode; scalar_t__ psstate; scalar_t__ connect_status; scalar_t__ is_polling; } ;


 int EINVAL ;
 int FW_CAPINFO_PS ;
 scalar_t__ LBS802_11POWERMODECAM ;
 scalar_t__ LBS802_11POWERMODEMAX_PSP ;
 scalar_t__ LBS_CONNECTED ;
 int PS_MODE_ACTION_ENTER_PS ;
 int PS_MODE_ACTION_EXIT_PS ;
 scalar_t__ PS_STATE_FULL_POWER ;
 int lbs_set_ps_mode (struct lbs_private*,int ,int) ;
 struct lbs_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int lbs_set_power_mgmt(struct wiphy *wiphy, struct net_device *dev,
         bool enabled, int timeout)
{
 struct lbs_private *priv = wiphy_priv(wiphy);

 if (!(priv->fwcapinfo & FW_CAPINFO_PS)) {
  if (!enabled)
   return 0;
  else
   return -EINVAL;
 }





 if (priv->is_polling) {
  if (!enabled)
   return 0;
  else
   return -EINVAL;
 }
 if (!enabled) {
  priv->psmode = LBS802_11POWERMODECAM;
  if (priv->psstate != PS_STATE_FULL_POWER)
   lbs_set_ps_mode(priv,
     PS_MODE_ACTION_EXIT_PS,
     1);
  return 0;
 }
 if (priv->psmode != LBS802_11POWERMODECAM)
  return 0;
 priv->psmode = LBS802_11POWERMODEMAX_PSP;
 if (priv->connect_status == LBS_CONNECTED)
  lbs_set_ps_mode(priv, PS_MODE_ACTION_ENTER_PS, 1);
 return 0;
}
