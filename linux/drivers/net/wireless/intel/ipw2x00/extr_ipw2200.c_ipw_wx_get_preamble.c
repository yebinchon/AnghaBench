
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int name; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int config; int mutex; } ;


 int CFG_PREAMBLE_LONG ;
 int IFNAMSIZ ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (int ,int ,char*) ;

__attribute__((used)) static int ipw_wx_get_preamble(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 mutex_lock(&priv->mutex);
 if (priv->config & CFG_PREAMBLE_LONG)
  snprintf(wrqu->name, IFNAMSIZ, "long (1)");
 else
  snprintf(wrqu->name, IFNAMSIZ, "auto (0)");
 mutex_unlock(&priv->mutex);
 return 0;
}
