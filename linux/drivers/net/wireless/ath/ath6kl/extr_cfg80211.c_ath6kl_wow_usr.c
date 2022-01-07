
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct cfg80211_wowlan {size_t n_patterns; scalar_t__ four_way_handshake; scalar_t__ eap_identity_req; scalar_t__ gtk_rekey_failure; scalar_t__ magic_pkt; scalar_t__ disconnect; TYPE_1__* patterns; } ;
struct ath6kl_vif {int fw_vif_idx; } ;
struct ath6kl {int wmi; } ;
typedef int mask ;
struct TYPE_2__ {int pattern_len; int* mask; int pattern; } ;


 int WOW_FILTER_OPTION_8021X_4WAYHS ;
 int WOW_FILTER_OPTION_EAP_REQ ;
 int WOW_FILTER_OPTION_GTK_ERROR ;
 int WOW_FILTER_OPTION_MAGIC_PACKET ;
 int WOW_FILTER_OPTION_NWK_DISASSOC ;
 int WOW_LIST_ID ;
 int WOW_PATTERN_SIZE ;
 int ath6kl_wmi_add_wow_pattern_cmd (int ,int ,int ,int,int ,int ,int*) ;
 int memset (int**,int ,int) ;

__attribute__((used)) static int ath6kl_wow_usr(struct ath6kl *ar, struct ath6kl_vif *vif,
     struct cfg80211_wowlan *wow, u32 *filter)
{
 int ret, pos;
 u8 mask[WOW_PATTERN_SIZE];
 u16 i;


 for (i = 0; i < wow->n_patterns; i++) {
  memset(&mask, 0, sizeof(mask));
  for (pos = 0; pos < wow->patterns[i].pattern_len; pos++) {
   if (wow->patterns[i].mask[pos / 8] & (0x1 << (pos % 8)))
    mask[pos] = 0xFF;
  }






  ret = ath6kl_wmi_add_wow_pattern_cmd(ar->wmi,
    vif->fw_vif_idx, WOW_LIST_ID,
    wow->patterns[i].pattern_len,
    0 ,
    wow->patterns[i].pattern, mask);
  if (ret)
   return ret;
 }

 if (wow->disconnect)
  *filter |= WOW_FILTER_OPTION_NWK_DISASSOC;

 if (wow->magic_pkt)
  *filter |= WOW_FILTER_OPTION_MAGIC_PACKET;

 if (wow->gtk_rekey_failure)
  *filter |= WOW_FILTER_OPTION_GTK_ERROR;

 if (wow->eap_identity_req)
  *filter |= WOW_FILTER_OPTION_EAP_REQ;

 if (wow->four_way_handshake)
  *filter |= WOW_FILTER_OPTION_8021X_4WAYHS;

 return 0;
}
