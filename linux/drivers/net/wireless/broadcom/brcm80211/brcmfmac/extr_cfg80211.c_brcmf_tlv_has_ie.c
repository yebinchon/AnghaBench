
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 size_t TLV_BODY_OFF ;
 int const TLV_HDR_LEN ;
 size_t TLV_LEN_OFF ;
 int memcmp (int const*,int const*,int) ;

__attribute__((used)) static bool
brcmf_tlv_has_ie(const u8 *ie, const u8 **tlvs, u32 *tlvs_len,
   const u8 *oui, u32 oui_len, u8 type)
{

 if (ie[TLV_LEN_OFF] >= oui_len + 1 &&
     !memcmp(&ie[TLV_BODY_OFF], oui, oui_len) &&
     type == ie[TLV_BODY_OFF + oui_len]) {
  return 1;
 }

 if (tlvs == ((void*)0))
  return 0;

 ie += ie[TLV_LEN_OFF] + TLV_HDR_LEN;

 *tlvs_len -= (int)(ie - *tlvs);

 *tlvs = ie;

 return 0;
}
