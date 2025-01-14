
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mwifiex_private {TYPE_1__* vs_ie; } ;
struct TYPE_4__ {void* len; void* type; } ;
struct mwifiex_ie_types_vendor_param_set {TYPE_2__ header; int ie; } ;
struct mwifiex_ie_types_header {int dummy; } ;
struct TYPE_3__ {int mask; scalar_t__* ie; } ;


 int MWIFIEX_MAX_VSIE_NUM ;
 int TLV_TYPE_PASSTHROUGH ;
 void* cpu_to_le16 (int) ;
 scalar_t__ le16_to_cpu (void*) ;
 int memcpy (int ,scalar_t__*,scalar_t__) ;

int
mwifiex_cmd_append_vsie_tlv(struct mwifiex_private *priv,
       u16 vsie_mask, u8 **buffer)
{
 int id, ret_len = 0;
 struct mwifiex_ie_types_vendor_param_set *vs_param_set;

 if (!buffer)
  return 0;
 if (!(*buffer))
  return 0;





 for (id = 0; id < MWIFIEX_MAX_VSIE_NUM; id++) {
  if (priv->vs_ie[id].mask & vsie_mask) {
   vs_param_set =
    (struct mwifiex_ie_types_vendor_param_set *)
    *buffer;
   vs_param_set->header.type =
    cpu_to_le16(TLV_TYPE_PASSTHROUGH);
   vs_param_set->header.len =
    cpu_to_le16((((u16) priv->vs_ie[id].ie[1])
    & 0x00FF) + 2);
   memcpy(vs_param_set->ie, priv->vs_ie[id].ie,
          le16_to_cpu(vs_param_set->header.len));
   *buffer += le16_to_cpu(vs_param_set->header.len) +
       sizeof(struct mwifiex_ie_types_header);
   ret_len += le16_to_cpu(vs_param_set->header.len) +
       sizeof(struct mwifiex_ie_types_header);
  }
 }
 return ret_len;
}
