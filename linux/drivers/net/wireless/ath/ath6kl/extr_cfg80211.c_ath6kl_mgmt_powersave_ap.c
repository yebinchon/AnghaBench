
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
struct ieee80211_mgmt {int da; } ;
struct ath6kl_vif {int fw_vif_idx; struct ath6kl* ar; } ;
struct ath6kl_sta {int sta_flags; scalar_t__ mgmt_psq_len; int psq_lock; int psq; int aid; int mgmt_psq; } ;
struct ath6kl_mgmt_buff {size_t len; int no_cck; int list; int buf; void* wait; void* freq; void* id; } ;
struct ath6kl {int wmi; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int STA_PS_POLLED ;
 int STA_PS_SLEEP ;
 struct ath6kl_sta* ath6kl_find_sta (struct ath6kl_vif*,int ) ;
 int ath6kl_wmi_set_pvb_cmd (int ,int ,int ,int) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 struct ath6kl_mgmt_buff* kmalloc (size_t,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int const*,size_t) ;
 scalar_t__ skb_queue_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool ath6kl_mgmt_powersave_ap(struct ath6kl_vif *vif,
         u32 id,
         u32 freq,
         u32 wait,
         const u8 *buf,
         size_t len,
         bool *more_data,
         bool no_cck)
{
 struct ieee80211_mgmt *mgmt;
 struct ath6kl_sta *conn;
 bool is_psq_empty = 0;
 struct ath6kl_mgmt_buff *mgmt_buf;
 size_t mgmt_buf_size;
 struct ath6kl *ar = vif->ar;

 mgmt = (struct ieee80211_mgmt *) buf;
 if (is_multicast_ether_addr(mgmt->da))
  return 0;

 conn = ath6kl_find_sta(vif, mgmt->da);
 if (!conn)
  return 0;

 if (conn->sta_flags & STA_PS_SLEEP) {
  if (!(conn->sta_flags & STA_PS_POLLED)) {

   mgmt_buf_size = len + sizeof(struct ath6kl_mgmt_buff);
   mgmt_buf = kmalloc(mgmt_buf_size, GFP_KERNEL);
   if (!mgmt_buf)
    return 0;

   INIT_LIST_HEAD(&mgmt_buf->list);
   mgmt_buf->id = id;
   mgmt_buf->freq = freq;
   mgmt_buf->wait = wait;
   mgmt_buf->len = len;
   mgmt_buf->no_cck = no_cck;
   memcpy(mgmt_buf->buf, buf, len);
   spin_lock_bh(&conn->psq_lock);
   is_psq_empty = skb_queue_empty(&conn->psq) &&
     (conn->mgmt_psq_len == 0);
   list_add_tail(&mgmt_buf->list, &conn->mgmt_psq);
   conn->mgmt_psq_len++;
   spin_unlock_bh(&conn->psq_lock);






   if (is_psq_empty)
    ath6kl_wmi_set_pvb_cmd(ar->wmi, vif->fw_vif_idx,
             conn->aid, 1);
   return 1;
  }





  spin_lock_bh(&conn->psq_lock);
  if (!skb_queue_empty(&conn->psq) || (conn->mgmt_psq_len != 0))
   *more_data = 1;
  spin_unlock_bh(&conn->psq_lock);
 }

 return 0;
}
