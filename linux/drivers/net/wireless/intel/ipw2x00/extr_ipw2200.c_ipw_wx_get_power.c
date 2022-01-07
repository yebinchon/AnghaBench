
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disabled; } ;
union iwreq_data {TYPE_1__ power; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int power_mode; int mutex; } ;


 int IPW_DEBUG_WX (char*,int) ;
 int IPW_POWER_ENABLED ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_get_power(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 mutex_lock(&priv->mutex);
 if (!(priv->power_mode & IPW_POWER_ENABLED))
  wrqu->power.disabled = 1;
 else
  wrqu->power.disabled = 0;

 mutex_unlock(&priv->mutex);
 IPW_DEBUG_WX("GET Power Management Mode -> %02X\n", priv->power_mode);

 return 0;
}
