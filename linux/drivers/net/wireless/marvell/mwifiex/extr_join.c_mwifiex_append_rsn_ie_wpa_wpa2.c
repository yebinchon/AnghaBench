
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mwifiex_private {scalar_t__* wpa_ie; } ;
struct TYPE_2__ {void* len; void* type; } ;
struct mwifiex_ie_types_rsn_param_set {TYPE_1__ header; int rsn_ie; } ;


 void* cpu_to_le16 (int) ;
 int le16_to_cpu (void*) ;
 int memcpy (int ,scalar_t__*,int) ;

__attribute__((used)) static int mwifiex_append_rsn_ie_wpa_wpa2(struct mwifiex_private *priv,
       u8 **buffer)
{
 struct mwifiex_ie_types_rsn_param_set *rsn_ie_tlv;
 int rsn_ie_len;

 if (!buffer || !(*buffer))
  return 0;

 rsn_ie_tlv = (struct mwifiex_ie_types_rsn_param_set *) (*buffer);
 rsn_ie_tlv->header.type = cpu_to_le16((u16) priv->wpa_ie[0]);
 rsn_ie_tlv->header.type = cpu_to_le16(
     le16_to_cpu(rsn_ie_tlv->header.type) & 0x00FF);
 rsn_ie_tlv->header.len = cpu_to_le16((u16) priv->wpa_ie[1]);
 rsn_ie_tlv->header.len = cpu_to_le16(le16_to_cpu(rsn_ie_tlv->header.len)
        & 0x00FF);
 if (le16_to_cpu(rsn_ie_tlv->header.len) <= (sizeof(priv->wpa_ie) - 2))
  memcpy(rsn_ie_tlv->rsn_ie, &priv->wpa_ie[2],
         le16_to_cpu(rsn_ie_tlv->header.len));
 else
  return -1;

 rsn_ie_len = sizeof(rsn_ie_tlv->header) +
     le16_to_cpu(rsn_ie_tlv->header.len);
 *buffer += rsn_ie_len;

 return rsn_ie_len;
}
