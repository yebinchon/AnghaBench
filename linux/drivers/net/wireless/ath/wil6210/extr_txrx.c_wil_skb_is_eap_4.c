
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wil_eapol_key {scalar_t__ key_nonce; } ;
struct wil6210_priv {int dummy; } ;
struct sk_buff {int dummy; } ;


 int WIL_EAP_NONCE_LEN ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 struct wil_eapol_key* wil_is_ptk_eapol_key (struct wil6210_priv*,struct sk_buff*) ;

__attribute__((used)) static bool wil_skb_is_eap_4(struct wil6210_priv *wil, struct sk_buff *skb)
{
 struct wil_eapol_key *key;
 u32 *nonce, i;

 key = wil_is_ptk_eapol_key(wil, skb);
 if (!key)
  return 0;

 nonce = (u32 *)key->key_nonce;
 for (i = 0; i < WIL_EAP_NONCE_LEN / sizeof(u32); i++, nonce++) {
  if (*nonce != 0) {

   wil_dbg_misc(wil, "EAPOL key message 2\n");
   return 0;
  }
 }
 wil_dbg_misc(wil, "EAPOL key message 4\n");

 return 1;
}
