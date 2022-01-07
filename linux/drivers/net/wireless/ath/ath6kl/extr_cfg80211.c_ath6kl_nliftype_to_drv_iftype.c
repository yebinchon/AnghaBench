
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int ADHOC_NETWORK ;
 int AP_NETWORK ;
 int ENOTSUPP ;
 int INFRA_NETWORK ;





 int ath6kl_err (char*,int) ;

__attribute__((used)) static int ath6kl_nliftype_to_drv_iftype(enum nl80211_iftype type, u8 *nw_type)
{
 switch (type) {
 case 128:
 case 130:
  *nw_type = INFRA_NETWORK;
  break;
 case 132:
  *nw_type = ADHOC_NETWORK;
  break;
 case 131:
 case 129:
  *nw_type = AP_NETWORK;
  break;
 default:
  ath6kl_err("invalid interface type %u\n", type);
  return -ENOTSUPP;
 }

 return 0;
}
