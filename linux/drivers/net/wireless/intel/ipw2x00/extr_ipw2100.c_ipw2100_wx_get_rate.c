
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
struct TYPE_2__ {int value; } ;
union iwreq_data {TYPE_1__ bitrate; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int status; int action_mutex; } ;


 int EIO ;
 int IPW_DEBUG_WX (char*,...) ;
 int IPW_ORD_CURRENT_TX_RATE ;
 int STATUS_ASSOCIATED ;
 int STATUS_ENABLED ;
 int STATUS_INITIALIZED ;
 int STATUS_RF_KILL_MASK ;




 int TX_RATE_MASK ;
 int ipw2100_get_ordinal (struct ipw2100_priv*,int ,int*,unsigned int*) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw2100_wx_get_rate(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 int val;
 unsigned int len = sizeof(val);
 int err = 0;

 if (!(priv->status & STATUS_ENABLED) ||
     priv->status & STATUS_RF_KILL_MASK ||
     !(priv->status & STATUS_ASSOCIATED)) {
  wrqu->bitrate.value = 0;
  return 0;
 }

 mutex_lock(&priv->action_mutex);
 if (!(priv->status & STATUS_INITIALIZED)) {
  err = -EIO;
  goto done;
 }

 err = ipw2100_get_ordinal(priv, IPW_ORD_CURRENT_TX_RATE, &val, &len);
 if (err) {
  IPW_DEBUG_WX("failed querying ordinals.\n");
  goto done;
 }

 switch (val & TX_RATE_MASK) {
 case 130:
  wrqu->bitrate.value = 1000000;
  break;
 case 129:
  wrqu->bitrate.value = 2000000;
  break;
 case 128:
  wrqu->bitrate.value = 5500000;
  break;
 case 131:
  wrqu->bitrate.value = 11000000;
  break;
 default:
  wrqu->bitrate.value = 0;
 }

 IPW_DEBUG_WX("GET Rate -> %d\n", wrqu->bitrate.value);

      done:
 mutex_unlock(&priv->action_mutex);
 return err;
}
