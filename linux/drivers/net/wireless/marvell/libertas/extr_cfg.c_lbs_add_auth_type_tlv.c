
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {void* len; void* type; } ;
struct mrvl_ie_auth_type {void* auth; TYPE_1__ header; } ;
typedef enum nl80211_auth_type { ____Placeholder_nl80211_auth_type } nl80211_auth_type ;


 int TLV_TYPE_AUTH_TYPE ;
 void* cpu_to_le16 (int) ;
 int lbs_auth_to_authtype (int) ;

__attribute__((used)) static int lbs_add_auth_type_tlv(u8 *tlv, enum nl80211_auth_type auth_type)
{
 struct mrvl_ie_auth_type *auth = (void *) tlv;






 auth->header.type = cpu_to_le16(TLV_TYPE_AUTH_TYPE);
 auth->header.len = cpu_to_le16(sizeof(*auth)-sizeof(auth->header));
 auth->auth = cpu_to_le16(lbs_auth_to_authtype(auth_type));
 return sizeof(*auth);
}
