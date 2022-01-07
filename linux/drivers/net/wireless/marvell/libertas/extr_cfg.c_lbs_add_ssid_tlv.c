
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {void* len; void* type; } ;
struct mrvl_ie_ssid_param_set {int ssid; TYPE_1__ header; } ;


 int TLV_TYPE_SSID ;
 void* cpu_to_le16 (int) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int lbs_add_ssid_tlv(u8 *tlv, const u8 *ssid, int ssid_len)
{
 struct mrvl_ie_ssid_param_set *ssid_tlv = (void *)tlv;






 ssid_tlv->header.type = cpu_to_le16(TLV_TYPE_SSID);
 ssid_tlv->header.len = cpu_to_le16(ssid_len);
 memcpy(ssid_tlv->ssid, ssid, ssid_len);
 return sizeof(ssid_tlv->header) + ssid_len;
}
