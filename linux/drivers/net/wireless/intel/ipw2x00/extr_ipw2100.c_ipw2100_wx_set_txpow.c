
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ fixed; int value; int disabled; } ;
union iwreq_data {TYPE_2__ txpower; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int status; int action_mutex; TYPE_1__* ieee; } ;
struct TYPE_3__ {scalar_t__ iw_mode; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int EIO ;
 int IPW_DEBUG_WX (char*,int) ;
 int IPW_TX_POWER_DEFAULT ;
 int IPW_TX_POWER_MAX_DBM ;
 int IPW_TX_POWER_MIN_DBM ;
 scalar_t__ IW_MODE_ADHOC ;
 int IW_TXPOW_DBM ;
 int IW_TXPOW_TYPE ;
 int STATUS_INITIALIZED ;
 int ipw2100_set_tx_power (struct ipw2100_priv*,int) ;
 scalar_t__ ipw_radio_kill_sw (struct ipw2100_priv*,int ) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw2100_wx_set_txpow(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 int err = 0, value;

 if (ipw_radio_kill_sw(priv, wrqu->txpower.disabled))
  return -EINPROGRESS;

 if (priv->ieee->iw_mode != IW_MODE_ADHOC)
  return 0;

 if ((wrqu->txpower.flags & IW_TXPOW_TYPE) != IW_TXPOW_DBM)
  return -EINVAL;

 if (wrqu->txpower.fixed == 0)
  value = IPW_TX_POWER_DEFAULT;
 else {
  if (wrqu->txpower.value < IPW_TX_POWER_MIN_DBM ||
      wrqu->txpower.value > IPW_TX_POWER_MAX_DBM)
   return -EINVAL;

  value = wrqu->txpower.value;
 }

 mutex_lock(&priv->action_mutex);
 if (!(priv->status & STATUS_INITIALIZED)) {
  err = -EIO;
  goto done;
 }

 err = ipw2100_set_tx_power(priv, value);

 IPW_DEBUG_WX("SET TX Power -> %d\n", value);

      done:
 mutex_unlock(&priv->action_mutex);
 return err;
}
