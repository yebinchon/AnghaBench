
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wil_eapol_key {int key_info; } ;
struct wil6210_priv {int dummy; } ;
struct sk_buff {int dummy; } ;


 int WIL_KEY_INFO_ENCR_KEY_DATA ;
 int WIL_KEY_INFO_MIC ;
 int be16_to_cpu (int ) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 struct wil_eapol_key* wil_is_ptk_eapol_key (struct wil6210_priv*,struct sk_buff*) ;

__attribute__((used)) static bool wil_skb_is_eap_3(struct wil6210_priv *wil, struct sk_buff *skb)
{
 struct wil_eapol_key *key;
 u16 key_info;

 key = wil_is_ptk_eapol_key(wil, skb);
 if (!key)
  return 0;

 key_info = be16_to_cpu(key->key_info);
 if (key_info & (WIL_KEY_INFO_MIC |
   WIL_KEY_INFO_ENCR_KEY_DATA)) {

  wil_dbg_misc(wil, "EAPOL key message 3\n");
  return 1;
 }

 wil_dbg_misc(wil, "EAPOL key message 1\n");

 return 0;
}
