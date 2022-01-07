
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u16 ;
struct mwifiex_private {unsigned int gen_idx; } ;
struct mwifiex_ie {void* ie_length; void* mgmt_subtype_mask; void* ie_index; scalar_t__ ie_buffer; } ;
struct ieee_types_header {int len; int element_id; } ;
struct ieee80211_vendor_ie {int len; int element_id; } ;
struct cfg80211_beacon_data {int tail_len; int const* tail; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int IEEE_MAX_IE_SIZE ;
 unsigned int MGMT_MASK_ASSOC_RESP ;
 unsigned int MGMT_MASK_BEACON ;
 unsigned int MGMT_MASK_PROBE_RESP ;
 unsigned int MWIFIEX_AUTO_IDX_MASK ;
 int WLAN_OUI_MICROSOFT ;
 int WLAN_OUI_TYPE_MICROSOFT_WMM ;
 int WLAN_OUI_TYPE_MICROSOFT_WPA ;
 scalar_t__ cfg80211_find_vendor_ie (int ,int ,int const*,unsigned int) ;
 void* cpu_to_le16 (unsigned int) ;
 int kfree (struct mwifiex_ie*) ;
 struct mwifiex_ie* kzalloc (int,int ) ;
 int memcpy (scalar_t__,struct ieee_types_header*,unsigned int) ;
 scalar_t__ mwifiex_update_uap_custom_ie (struct mwifiex_private*,struct mwifiex_ie*,unsigned int*,int *,int *,int *,int *) ;

__attribute__((used)) static int mwifiex_uap_parse_tail_ies(struct mwifiex_private *priv,
          struct cfg80211_beacon_data *info)
{
 struct mwifiex_ie *gen_ie;
 struct ieee_types_header *hdr;
 struct ieee80211_vendor_ie *vendorhdr;
 u16 gen_idx = MWIFIEX_AUTO_IDX_MASK, ie_len = 0;
 int left_len, parsed_len = 0;
 unsigned int token_len;
 int err = 0;

 if (!info->tail || !info->tail_len)
  return 0;

 gen_ie = kzalloc(sizeof(*gen_ie), GFP_KERNEL);
 if (!gen_ie)
  return -ENOMEM;

 left_len = info->tail_len;




 while (left_len > sizeof(struct ieee_types_header)) {
  hdr = (void *)(info->tail + parsed_len);
  token_len = hdr->len + sizeof(struct ieee_types_header);
  if (token_len > left_len) {
   err = -EINVAL;
   goto out;
  }

  switch (hdr->element_id) {
  case 132:
  case 131:
  case 138:
  case 133:
  case 137:
  case 136:
  case 135:
  case 134:
  case 129:
  case 128:
   break;
  case 130:

   if (cfg80211_find_vendor_ie(WLAN_OUI_MICROSOFT,
          WLAN_OUI_TYPE_MICROSOFT_WMM,
          (const u8 *)hdr,
          token_len))
    break;

  default:
   if (ie_len + token_len > IEEE_MAX_IE_SIZE) {
    err = -EINVAL;
    goto out;
   }
   memcpy(gen_ie->ie_buffer + ie_len, hdr, token_len);
   ie_len += token_len;
   break;
  }
  left_len -= token_len;
  parsed_len += token_len;
 }




 vendorhdr = (void *)cfg80211_find_vendor_ie(WLAN_OUI_MICROSOFT,
          WLAN_OUI_TYPE_MICROSOFT_WPA,
          info->tail, info->tail_len);
 if (vendorhdr) {
  token_len = vendorhdr->len + sizeof(struct ieee_types_header);
  if (ie_len + token_len > IEEE_MAX_IE_SIZE) {
   err = -EINVAL;
   goto out;
  }
  memcpy(gen_ie->ie_buffer + ie_len, vendorhdr, token_len);
  ie_len += token_len;
 }

 if (!ie_len)
  goto out;

 gen_ie->ie_index = cpu_to_le16(gen_idx);
 gen_ie->mgmt_subtype_mask = cpu_to_le16(MGMT_MASK_BEACON |
      MGMT_MASK_PROBE_RESP |
      MGMT_MASK_ASSOC_RESP);
 gen_ie->ie_length = cpu_to_le16(ie_len);

 if (mwifiex_update_uap_custom_ie(priv, gen_ie, &gen_idx, ((void*)0), ((void*)0),
      ((void*)0), ((void*)0))) {
  err = -EINVAL;
  goto out;
 }

 priv->gen_idx = gen_idx;

 out:
 kfree(gen_ie);
 return err;
}
