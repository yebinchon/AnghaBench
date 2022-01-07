
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int lbs_add_wpa_tlv(u8 *tlv, const u8 *ie, u8 ie_len)
{
 size_t tlv_len;
 *tlv++ = *ie++;
 *tlv++ = 0;
 tlv_len = *tlv++ = *ie++;
 *tlv++ = 0;
 while (tlv_len--)
  *tlv++ = *ie++;

 return ie_len + 2;
}
