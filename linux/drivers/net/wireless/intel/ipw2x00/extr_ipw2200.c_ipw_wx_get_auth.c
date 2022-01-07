
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iw_param {int flags; int value; } ;
union iwreq_data {struct iw_param param; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int auth_mode; } ;
struct TYPE_4__ {size_t tx_keyidx; struct lib80211_crypt_data** crypt; } ;
struct libipw_device {int drop_unencrypted; int wpa_enabled; int ieee802_1x; int privacy_invoked; TYPE_3__ sec; TYPE_1__ crypt_info; } ;
struct lib80211_crypt_data {int priv; TYPE_2__* ops; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {struct libipw_device* ieee; } ;
struct TYPE_5__ {int (* get_flags ) (int ) ;} ;


 int EOPNOTSUPP ;
 int IEEE80211_CRYPTO_TKIP_COUNTERMEASURES ;




 int IW_AUTH_INDEX ;







 struct ipw_priv* libipw_priv (struct net_device*) ;
 int stub1 (int ) ;

__attribute__((used)) static int ipw_wx_get_auth(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 struct libipw_device *ieee = priv->ieee;
 struct lib80211_crypt_data *crypt;
 struct iw_param *param = &wrqu->param;

 switch (param->flags & IW_AUTH_INDEX) {
 case 128:
 case 136:
 case 137:
 case 134:



  return -EOPNOTSUPP;

 case 130:
  crypt = priv->ieee->crypt_info.crypt[priv->ieee->crypt_info.tx_keyidx];
  if (!crypt || !crypt->ops->get_flags)
   break;

  param->value = (crypt->ops->get_flags(crypt->priv) &
    IEEE80211_CRYPTO_TKIP_COUNTERMEASURES) ? 1 : 0;

  break;

 case 135:
  param->value = ieee->drop_unencrypted;
  break;

 case 138:
  param->value = ieee->sec.auth_mode;
  break;

 case 129:
  param->value = ieee->wpa_enabled;
  break;

 case 131:
  param->value = ieee->ieee802_1x;
  break;

 case 132:
 case 133:
  param->value = ieee->privacy_invoked;
  break;

 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
