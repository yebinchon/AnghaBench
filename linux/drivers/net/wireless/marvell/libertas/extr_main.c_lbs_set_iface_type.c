
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {TYPE_1__* wdev; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_2__ {int const iftype; } ;


 int ENOTSUPP ;



 int SNMP_MIB_OID_BSS_TYPE ;
 int lbs_set_monitor_mode (struct lbs_private*,int) ;
 int lbs_set_snmp_mib (struct lbs_private*,int ,int) ;

int lbs_set_iface_type(struct lbs_private *priv, enum nl80211_iftype type)
{
 int ret = 0;

 switch (type) {
 case 129:
  ret = lbs_set_monitor_mode(priv, 1);
  break;
 case 128:
  if (priv->wdev->iftype == 129)
   ret = lbs_set_monitor_mode(priv, 0);
  if (!ret)
   ret = lbs_set_snmp_mib(priv, SNMP_MIB_OID_BSS_TYPE, 1);
  break;
 case 130:
  if (priv->wdev->iftype == 129)
   ret = lbs_set_monitor_mode(priv, 0);
  if (!ret)
   ret = lbs_set_snmp_mib(priv, SNMP_MIB_OID_BSS_TYPE, 2);
  break;
 default:
  ret = -ENOTSUPP;
 }
 return ret;
}
