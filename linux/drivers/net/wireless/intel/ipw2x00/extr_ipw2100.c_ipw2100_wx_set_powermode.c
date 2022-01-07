
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int status; int action_mutex; int power_mode; } ;


 int EIO ;
 int IPW_POWER_AUTO ;
 int IPW_POWER_LEVEL (int ) ;
 int POWER_MODES ;
 int STATUS_INITIALIZED ;
 int ipw2100_set_power_mode (struct ipw2100_priv*,int) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw2100_wx_set_powermode(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 int err = 0, mode = *(int *)extra;

 mutex_lock(&priv->action_mutex);
 if (!(priv->status & STATUS_INITIALIZED)) {
  err = -EIO;
  goto done;
 }

 if ((mode < 0) || (mode > POWER_MODES))
  mode = IPW_POWER_AUTO;

 if (IPW_POWER_LEVEL(priv->power_mode) != mode)
  err = ipw2100_set_power_mode(priv, mode);
      done:
 mutex_unlock(&priv->action_mutex);
 return err;
}
