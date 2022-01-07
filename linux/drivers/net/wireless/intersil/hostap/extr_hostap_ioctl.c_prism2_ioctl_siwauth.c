
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; int value; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_6__ {int tkip_countermeasures; int drop_unencrypted; int auth_algs; int wpa; int host_roaming; int privacy_invoked; int ieee_802_1x; TYPE_1__* func; int sta_fw_ver; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_5__ {int (* reset_port ) (struct net_device*) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int HFA384X_RID_SSNHANDLINGMODE ;




 int IW_AUTH_INDEX ;






 int PRISM2_FW_VER (int,int,int ) ;
 int hostap_set_encryption (TYPE_2__*) ;
 int hostap_set_roaming (TYPE_2__*) ;
 int hostap_set_word (struct net_device*,int ,int) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int prism2_set_genericelement (struct net_device*,char*,int ) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;

__attribute__((used)) static int prism2_ioctl_siwauth(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_param *data, char *extra)
{
 struct hostap_interface *iface = netdev_priv(dev);
 local_info_t *local = iface->local;

 switch (data->flags & IW_AUTH_INDEX) {
 case 128:
 case 135:
 case 136:
 case 133:




  break;
 case 130:
  local->tkip_countermeasures = data->value;
  break;
 case 134:
  local->drop_unencrypted = data->value;
  break;
 case 137:
  local->auth_algs = data->value;
  break;
 case 129:
  if (data->value == 0) {
   local->wpa = 0;
   if (local->sta_fw_ver < PRISM2_FW_VER(1,7,0))
    break;
   prism2_set_genericelement(dev, "", 0);
   local->host_roaming = 0;
   local->privacy_invoked = 0;
   if (hostap_set_word(dev, HFA384X_RID_SSNHANDLINGMODE,
         0) ||
       hostap_set_roaming(local) ||
       hostap_set_encryption(local) ||
       local->func->reset_port(dev))
    return -EINVAL;
   break;
  }
  if (local->sta_fw_ver < PRISM2_FW_VER(1,7,0))
   return -EOPNOTSUPP;
  local->host_roaming = 2;
  local->privacy_invoked = 1;
  local->wpa = 1;
  if (hostap_set_word(dev, HFA384X_RID_SSNHANDLINGMODE, 1) ||
      hostap_set_roaming(local) ||
      hostap_set_encryption(local) ||
      local->func->reset_port(dev))
   return -EINVAL;
  break;
 case 131:
  local->ieee_802_1x = data->value;
  break;
 case 132:
  local->privacy_invoked = data->value;
  break;
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
