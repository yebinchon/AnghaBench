
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct mwifiex_private {TYPE_2__* mgmt_ie; TYPE_1__* adapter; } ;
struct mwifiex_ie {int ie_length; } ;
struct TYPE_4__ {int ie_length; int mgmt_subtype_mask; } ;
struct TYPE_3__ {size_t max_mgmt_ie_index; } ;


 size_t IEEE_MAX_IE_SIZE ;
 size_t MWIFIEX_AUTO_IDX_MASK ;
 size_t le16_to_cpu (int ) ;
 scalar_t__ mwifiex_ie_index_used_by_other_intf (struct mwifiex_private*,size_t) ;

__attribute__((used)) static int
mwifiex_ie_get_autoidx(struct mwifiex_private *priv, u16 subtype_mask,
         struct mwifiex_ie *ie, u16 *index)
{
 u16 mask, len, i;

 for (i = 0; i < priv->adapter->max_mgmt_ie_index; i++) {
  mask = le16_to_cpu(priv->mgmt_ie[i].mgmt_subtype_mask);
  len = le16_to_cpu(ie->ie_length);

  if (mask == MWIFIEX_AUTO_IDX_MASK)
   continue;

  if (mask == subtype_mask) {
   if (len > IEEE_MAX_IE_SIZE)
    continue;

   *index = i;
   return 0;
  }

  if (!priv->mgmt_ie[i].ie_length) {
   if (mwifiex_ie_index_used_by_other_intf(priv, i))
    continue;

   *index = i;
   return 0;
  }
 }

 return -1;
}
