
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


union oid_res_t {int u; } ;
struct iw_param {int flags; int value; } ;
union iwreq_data {struct iw_param param; } ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_6__ {int wpa; int mib_sem; } ;
typedef TYPE_1__ islpci_private ;


 int DOT11_AUTH_OS ;
 int DOT11_AUTH_SK ;
 int DOT11_MLME_AUTO ;
 int DOT11_MLME_EXTENDED ;
 int DOT11_OID_AUTHENABLE ;
 int DOT11_OID_DOT1XENABLE ;
 int DOT11_OID_EXUNENCRYPTED ;
 int DOT11_OID_MLMEAUTOLEVEL ;
 int DOT11_OID_PRIVACYINVOKED ;
 int EINVAL ;
 int EOPNOTSUPP ;

 int IW_AUTH_ALG_OPEN_SYSTEM ;
 int IW_AUTH_ALG_SHARED_KEY ;



 int IW_AUTH_INDEX ;





 int IW_AUTH_WPA_VERSION_DISABLED ;
 int IW_AUTH_WPA_VERSION_WPA ;
 int IW_AUTH_WPA_VERSION_WPA2 ;
 scalar_t__ PRV_STATE_INIT ;
 int down_write (int *) ;
 scalar_t__ islpci_get_state (TYPE_1__*) ;
 int mgt_get_request (TYPE_1__*,int ,int ,int *,union oid_res_t*) ;
 int mgt_set_request (TYPE_1__*,int ,int ,int*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int up_write (int *) ;

__attribute__((used)) static int prism54_set_auth(struct net_device *ndev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 struct iw_param *param = &wrqu->param;
 u32 mlmelevel = 0, authen = 0, dot1x = 0;
 u32 exunencrypt = 0, privinvoked = 0, wpa = 0;
 u32 old_wpa;
 int ret = 0;
 union oid_res_t r;

 if (islpci_get_state(priv) < PRV_STATE_INIT)
  return 0;


 down_write(&priv->mib_sem);
 wpa = old_wpa = priv->wpa;
 up_write(&priv->mib_sem);
 ret = mgt_get_request(priv, DOT11_OID_AUTHENABLE, 0, ((void*)0), &r);
 authen = r.u;
 ret = mgt_get_request(priv, DOT11_OID_PRIVACYINVOKED, 0, ((void*)0), &r);
 privinvoked = r.u;
 ret = mgt_get_request(priv, DOT11_OID_EXUNENCRYPTED, 0, ((void*)0), &r);
 exunencrypt = r.u;
 ret = mgt_get_request(priv, DOT11_OID_DOT1XENABLE, 0, ((void*)0), &r);
 dot1x = r.u;
 ret = mgt_get_request(priv, DOT11_OID_MLMEAUTOLEVEL, 0, ((void*)0), &r);
 mlmelevel = r.u;

 if (ret < 0)
  goto out;

 switch (param->flags & IW_AUTH_INDEX) {
 case 134:
 case 135:
 case 132:
  break;

 case 129:

  if (param->value) {
   wpa = 1;
   privinvoked = 1;
   exunencrypt = 1;
   dot1x = 0x01;
   mlmelevel = DOT11_MLME_EXTENDED;
   authen = DOT11_AUTH_OS;
  } else {
   wpa = 0;
   privinvoked = 0;
   exunencrypt = 0;
   dot1x = 0;
   mlmelevel = DOT11_MLME_AUTO;
  }
  break;

 case 128:
  if (param->value & IW_AUTH_WPA_VERSION_DISABLED) {
   wpa = 0;
   privinvoked = 0;
   exunencrypt = 0;
   dot1x = 0;
   mlmelevel = DOT11_MLME_AUTO;
  } else {
   if (param->value & IW_AUTH_WPA_VERSION_WPA)
    wpa = 1;
   else if (param->value & IW_AUTH_WPA_VERSION_WPA2)
    wpa = 2;
   privinvoked = 1;
   exunencrypt = 1;
   dot1x = 0x01;
   mlmelevel = DOT11_MLME_EXTENDED;
   authen = DOT11_AUTH_OS;
  }
  break;

 case 130:




  dot1x = param->value ? 0 : 0x01;
  break;

 case 131:
  privinvoked = param->value ? 1 : 0;
  break;

 case 133:
  exunencrypt = param->value ? 1 : 0;
  break;

 case 136:
  if (param->value & IW_AUTH_ALG_SHARED_KEY) {

   if (wpa > 0) {
    ret = -EINVAL;
    goto out;
   }
   authen = DOT11_AUTH_SK;
  } else if (param->value & IW_AUTH_ALG_OPEN_SYSTEM) {
   authen = DOT11_AUTH_OS;
  } else {
   ret = -EINVAL;
   goto out;
  }
  break;

 default:
  return -EOPNOTSUPP;
 }


 down_write(&priv->mib_sem);
 priv->wpa = wpa;
 up_write(&priv->mib_sem);
 mgt_set_request(priv, DOT11_OID_AUTHENABLE, 0, &authen);
 mgt_set_request(priv, DOT11_OID_PRIVACYINVOKED, 0, &privinvoked);
 mgt_set_request(priv, DOT11_OID_EXUNENCRYPTED, 0, &exunencrypt);
 mgt_set_request(priv, DOT11_OID_DOT1XENABLE, 0, &dot1x);
 mgt_set_request(priv, DOT11_OID_MLMEAUTOLEVEL, 0, &mlmelevel);

out:
 return ret;
}
