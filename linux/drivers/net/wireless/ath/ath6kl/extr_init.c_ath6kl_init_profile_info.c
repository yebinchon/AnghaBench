
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_vif {scalar_t__ bss_ch; int bssid; int req_bssid; int wep_key_list; scalar_t__ grp_crypto_len; void* grp_crypto; scalar_t__ prwise_crypto_len; void* prwise_crypto; int auth_mode; int dot11_auth_mode; int ssid; scalar_t__ ssid_len; } ;


 int NONE_AUTH ;
 void* NONE_CRYPT ;
 int OPEN_AUTH ;
 int memset (int ,int ,int) ;

void ath6kl_init_profile_info(struct ath6kl_vif *vif)
{
 vif->ssid_len = 0;
 memset(vif->ssid, 0, sizeof(vif->ssid));

 vif->dot11_auth_mode = OPEN_AUTH;
 vif->auth_mode = NONE_AUTH;
 vif->prwise_crypto = NONE_CRYPT;
 vif->prwise_crypto_len = 0;
 vif->grp_crypto = NONE_CRYPT;
 vif->grp_crypto_len = 0;
 memset(vif->wep_key_list, 0, sizeof(vif->wep_key_list));
 memset(vif->req_bssid, 0, sizeof(vif->req_bssid));
 memset(vif->bssid, 0, sizeof(vif->bssid));
 vif->bss_ch = 0;
}
