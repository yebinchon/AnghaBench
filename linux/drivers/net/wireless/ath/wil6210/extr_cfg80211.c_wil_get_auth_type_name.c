
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_auth_type { ____Placeholder_nl80211_auth_type } nl80211_auth_type ;
__attribute__((used)) static const char *
wil_get_auth_type_name(enum nl80211_auth_type auth_type)
{
 switch (auth_type) {
 case 130:
  return "OPEN_SYSTEM";
 case 128:
  return "SHARED_KEY";
 case 132:
  return "FT";
 case 131:
  return "NETWORK_EAP";
 case 129:
  return "SAE";
 case 133:
  return "AUTOMATIC";
 default:
  return "unknown";
 }
}
