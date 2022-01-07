
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct brcmf_vs_tlv {int dummy; } ;
struct brcmf_tlv {int dummy; } ;


 int TLV_OUI_LEN ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPA_OUI ;
 int WPS_OUI_TYPE ;
 struct brcmf_tlv* brcmf_parse_tlvs (int const*,int ,int ) ;
 scalar_t__ brcmf_tlv_has_ie (int *,int const**,int *,int ,int ,int ) ;

__attribute__((used)) static struct brcmf_vs_tlv *
brcmf_find_wpsie(const u8 *parse, u32 len)
{
 const struct brcmf_tlv *ie;

 while ((ie = brcmf_parse_tlvs(parse, len, WLAN_EID_VENDOR_SPECIFIC))) {
  if (brcmf_tlv_has_ie((u8 *)ie, &parse, &len,
         WPA_OUI, TLV_OUI_LEN, WPS_OUI_TYPE))
   return (struct brcmf_vs_tlv *)ie;
 }
 return ((void*)0);
}
