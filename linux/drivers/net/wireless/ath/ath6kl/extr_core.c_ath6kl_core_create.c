
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct ath6kl_sta {int dummy; } ;
struct ath6kl {int p2p; int vif_max; int max_norm_iface; int intra_bss; int ap_country_code; int mcastpsq; TYPE_1__* sta_list; int state; int lrssi_roam_threshold; scalar_t__ tx_pwr; int flag; int vif_list; int amsdu_rx_buffer_queue; int sem; int event_wq; int list_lock; int mcastpsq_lock; int lock; struct device* dev; } ;
struct aggr_info_conn {int dummy; } ;
struct TYPE_2__ {int aggr_conn; int mgmt_psq; scalar_t__ mgmt_psq_len; int apsdq; int psq; int psq_lock; } ;


 int AP_MAX_NUM_STA ;
 int ATH6KL_STATE_OFF ;
 int DEF_AP_COUNTRY_CODE ;
 int DEF_LRSSI_ROAM_THRESHOLD ;
 int DESTROY_IN_PROGRESS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SKIP_SCAN ;
 int WMI_ENABLED ;
 struct ath6kl* ath6kl_cfg80211_create () ;
 int ath6kl_core_destroy (struct ath6kl*) ;
 int ath6kl_err (char*) ;
 int ath6kl_p2p ;
 int clear_bit (int ,int *) ;
 int init_waitqueue_head (int *) ;
 int kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int memset (int*,int ,int) ;
 int sema_init (int *,int) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

struct ath6kl *ath6kl_core_create(struct device *dev)
{
 struct ath6kl *ar;
 u8 ctr;

 ar = ath6kl_cfg80211_create();
 if (!ar)
  return ((void*)0);

 ar->p2p = !!ath6kl_p2p;
 ar->dev = dev;

 ar->vif_max = 1;

 ar->max_norm_iface = 1;

 spin_lock_init(&ar->lock);
 spin_lock_init(&ar->mcastpsq_lock);
 spin_lock_init(&ar->list_lock);

 init_waitqueue_head(&ar->event_wq);
 sema_init(&ar->sem, 1);

 INIT_LIST_HEAD(&ar->amsdu_rx_buffer_queue);
 INIT_LIST_HEAD(&ar->vif_list);

 clear_bit(WMI_ENABLED, &ar->flag);
 clear_bit(SKIP_SCAN, &ar->flag);
 clear_bit(DESTROY_IN_PROGRESS, &ar->flag);

 ar->tx_pwr = 0;
 ar->intra_bss = 1;
 ar->lrssi_roam_threshold = DEF_LRSSI_ROAM_THRESHOLD;

 ar->state = ATH6KL_STATE_OFF;

 memset((u8 *)ar->sta_list, 0,
        AP_MAX_NUM_STA * sizeof(struct ath6kl_sta));


 for (ctr = 0; ctr < AP_MAX_NUM_STA; ctr++) {
  spin_lock_init(&ar->sta_list[ctr].psq_lock);
  skb_queue_head_init(&ar->sta_list[ctr].psq);
  skb_queue_head_init(&ar->sta_list[ctr].apsdq);
  ar->sta_list[ctr].mgmt_psq_len = 0;
  INIT_LIST_HEAD(&ar->sta_list[ctr].mgmt_psq);
  ar->sta_list[ctr].aggr_conn =
   kzalloc(sizeof(struct aggr_info_conn), GFP_KERNEL);
  if (!ar->sta_list[ctr].aggr_conn) {
   ath6kl_err("Failed to allocate memory for sta aggregation information\n");
   ath6kl_core_destroy(ar);
   return ((void*)0);
  }
 }

 skb_queue_head_init(&ar->mcastpsq);

 memcpy(ar->ap_country_code, DEF_AP_COUNTRY_CODE, 3);

 return ar;
}
