
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_auth_type { ____Placeholder_nl80211_auth_type } nl80211_auth_type ;


 int ENOTSUPP ;





__attribute__((used)) static int lbs_auth_to_authtype(enum nl80211_auth_type auth_type)
{
 int ret = -ENOTSUPP;

 switch (auth_type) {
 case 129:
 case 128:
  ret = auth_type;
  break;
 case 131:
  ret = 129;
  break;
 case 130:
  ret = 0x80;
  break;
 default:

  break;
 }
 return ret;
}
