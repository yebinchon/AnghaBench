
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sa_family; int sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int mutex; int bssid; int config; } ;


 scalar_t__ ARPHRD_ETHER ;
 int CFG_STATIC_BSSID ;
 int EINVAL ;
 int ETH_ALEN ;
 int IPW_DEBUG_ASSOC (char*) ;
 int IPW_DEBUG_WX (char*,...) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int ipw_associate (struct ipw_priv*) ;
 int ipw_disassociate (struct ipw_priv*) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_zero_ether_addr (int ) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_set_wap(struct net_device *dev,
     struct iw_request_info *info,
     union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);

 if (wrqu->ap_addr.sa_family != ARPHRD_ETHER)
  return -EINVAL;
 mutex_lock(&priv->mutex);
 if (is_broadcast_ether_addr(wrqu->ap_addr.sa_data) ||
     is_zero_ether_addr(wrqu->ap_addr.sa_data)) {

  IPW_DEBUG_WX("Setting AP BSSID to ANY\n");
  priv->config &= ~CFG_STATIC_BSSID;
  IPW_DEBUG_ASSOC("Attempting to associate with new "
    "parameters.\n");
  ipw_associate(priv);
  mutex_unlock(&priv->mutex);
  return 0;
 }

 priv->config |= CFG_STATIC_BSSID;
 if (ether_addr_equal(priv->bssid, wrqu->ap_addr.sa_data)) {
  IPW_DEBUG_WX("BSSID set to current BSSID.\n");
  mutex_unlock(&priv->mutex);
  return 0;
 }

 IPW_DEBUG_WX("Setting mandatory BSSID to %pM\n",
       wrqu->ap_addr.sa_data);

 memcpy(priv->bssid, wrqu->ap_addr.sa_data, ETH_ALEN);


 IPW_DEBUG_ASSOC("[re]association triggered due to BSSID change.\n");
 if (!ipw_disassociate(priv))
  ipw_associate(priv);

 mutex_unlock(&priv->mutex);
 return 0;
}
