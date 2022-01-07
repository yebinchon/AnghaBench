
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct wil_tid_crypto_rx_single {int key_set; } ;
struct TYPE_3__ {struct wil_tid_crypto_rx_single* key_id; } ;
struct wil_sta_info {TYPE_1__ group_crypto_rx; TYPE_2__* tid_crypto_rx; } ;
typedef enum wmi_key_usage { ____Placeholder_wmi_key_usage } wmi_key_usage ;
struct TYPE_4__ {struct wil_tid_crypto_rx_single* key_id; } ;


 int WIL_STA_TID_NUM ;



__attribute__((used)) static void wil_del_rx_key(u8 key_index, enum wmi_key_usage key_usage,
      struct wil_sta_info *cs)
{
 struct wil_tid_crypto_rx_single *cc;
 int tid;

 if (!cs)
  return;

 switch (key_usage) {
 case 129:
  for (tid = 0; tid < WIL_STA_TID_NUM; tid++) {
   cc = &cs->tid_crypto_rx[tid].key_id[key_index];
   cc->key_set = 0;
  }
  break;
 case 128:
  cc = &cs->group_crypto_rx.key_id[key_index];
  cc->key_set = 0;
  break;
 default:
  break;
 }
}
