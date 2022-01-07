
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sa_family; int * sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int status; int action_mutex; int mandatory_bssid_mac; int config; } ;


 scalar_t__ ARPHRD_ETHER ;
 int CFG_STATIC_BSSID ;
 int EINVAL ;
 int EIO ;
 int ETH_ALEN ;
 int IPW_DEBUG_WX (char*,...) ;
 int STATUS_INITIALIZED ;
 int ipw2100_set_mandatory_bssid (struct ipw2100_priv*,int *,int ) ;
 scalar_t__ is_broadcast_ether_addr (int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int memcpy (int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw2100_wx_set_wap(struct net_device *dev,
         struct iw_request_info *info,
         union iwreq_data *wrqu, char *extra)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 int err = 0;


 if (wrqu->ap_addr.sa_family != ARPHRD_ETHER)
  return -EINVAL;

 mutex_lock(&priv->action_mutex);
 if (!(priv->status & STATUS_INITIALIZED)) {
  err = -EIO;
  goto done;
 }

 if (is_broadcast_ether_addr(wrqu->ap_addr.sa_data) ||
     is_zero_ether_addr(wrqu->ap_addr.sa_data)) {

  IPW_DEBUG_WX("exit - disable mandatory BSSID\n");
  priv->config &= ~CFG_STATIC_BSSID;
  err = ipw2100_set_mandatory_bssid(priv, ((void*)0), 0);
  goto done;
 }

 priv->config |= CFG_STATIC_BSSID;
 memcpy(priv->mandatory_bssid_mac, wrqu->ap_addr.sa_data, ETH_ALEN);

 err = ipw2100_set_mandatory_bssid(priv, wrqu->ap_addr.sa_data, 0);

 IPW_DEBUG_WX("SET BSSID -> %pM\n", wrqu->ap_addr.sa_data);

      done:
 mutex_unlock(&priv->action_mutex);
 return err;
}
