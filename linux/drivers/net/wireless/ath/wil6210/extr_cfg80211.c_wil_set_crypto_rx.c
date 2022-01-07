
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct wil_tid_crypto_rx_single {int key_set; int pn; } ;
struct TYPE_4__ {struct wil_tid_crypto_rx_single* key_id; } ;
struct wil_sta_info {TYPE_2__ group_crypto_rx; TYPE_1__* tid_crypto_rx; } ;
struct key_params {int seq; } ;
typedef enum wmi_key_usage { ____Placeholder_wmi_key_usage } wmi_key_usage ;
struct TYPE_3__ {struct wil_tid_crypto_rx_single* key_id; } ;


 int IEEE80211_GCMP_PN_LEN ;
 int WIL_STA_TID_NUM ;



 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;

void wil_set_crypto_rx(u8 key_index, enum wmi_key_usage key_usage,
         struct wil_sta_info *cs,
         struct key_params *params)
{
 struct wil_tid_crypto_rx_single *cc;
 int tid;

 if (!cs)
  return;

 switch (key_usage) {
 case 128:
 case 130:
  for (tid = 0; tid < WIL_STA_TID_NUM; tid++) {
   cc = &cs->tid_crypto_rx[tid].key_id[key_index];
   if (params->seq)
    memcpy(cc->pn, params->seq,
           IEEE80211_GCMP_PN_LEN);
   else
    memset(cc->pn, 0, IEEE80211_GCMP_PN_LEN);
   cc->key_set = 1;
  }
  break;
 case 129:
  cc = &cs->group_crypto_rx.key_id[key_index];
  if (params->seq)
   memcpy(cc->pn, params->seq, IEEE80211_GCMP_PN_LEN);
  else
   memset(cc->pn, 0, IEEE80211_GCMP_PN_LEN);
  cc->key_set = 1;
  break;
 default:
  break;
 }
}
