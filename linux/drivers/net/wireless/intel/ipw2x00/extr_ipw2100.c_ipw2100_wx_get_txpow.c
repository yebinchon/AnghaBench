
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disabled; int fixed; scalar_t__ value; int flags; } ;
union iwreq_data {TYPE_1__ txpower; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int status; scalar_t__ tx_power; } ;


 int IPW_DEBUG_WX (char*,scalar_t__) ;
 scalar_t__ IPW_TX_POWER_DEFAULT ;
 scalar_t__ IPW_TX_POWER_MAX_DBM ;
 int IW_TXPOW_DBM ;
 int STATUS_RF_KILL_MASK ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;

__attribute__((used)) static int ipw2100_wx_get_txpow(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);

 wrqu->txpower.disabled = (priv->status & STATUS_RF_KILL_MASK) ? 1 : 0;

 if (priv->tx_power == IPW_TX_POWER_DEFAULT) {
  wrqu->txpower.fixed = 0;
  wrqu->txpower.value = IPW_TX_POWER_MAX_DBM;
 } else {
  wrqu->txpower.fixed = 1;
  wrqu->txpower.value = priv->tx_power;
 }

 wrqu->txpower.flags = IW_TXPOW_DBM;

 IPW_DEBUG_WX("GET TX Power -> %d\n", wrqu->txpower.value);

 return 0;
}
