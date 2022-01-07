
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct wmi_10_2_stats_event {int num_peer_stats; int num_pdev_ext_stats; int num_pdev_stats; } ;
struct wmi_10_2_pdev_stats {int extra; int rx; int tx; int base; } ;
struct wmi_10_2_pdev_ext_stats {int dummy; } ;
struct wmi_10_2_4_peer_stats {int dummy; } ;
struct TYPE_4__ {int peer_rx_rate; int old; } ;
struct wmi_10_2_4_ext_peer_stats {int rx_duration; TYPE_2__ common; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k_fw_stats_peer {int list; void* rx_duration; void* peer_rx_rate; } ;
struct ath10k_fw_stats_pdev {int list; } ;
struct ath10k_fw_stats {int peers; int pdevs; } ;
struct TYPE_3__ {int svc_map; } ;
struct ath10k {TYPE_1__ wmi; } ;


 int EPROTO ;
 int GFP_ATOMIC ;
 int WMI_SERVICE_PEER_STATS ;
 void* __le32_to_cpu (int ) ;
 scalar_t__ ath10k_peer_stats_enabled (struct ath10k*) ;
 int ath10k_wmi_pull_pdev_stats_base (int *,struct ath10k_fw_stats_pdev*) ;
 int ath10k_wmi_pull_pdev_stats_extra (int *,struct ath10k_fw_stats_pdev*) ;
 int ath10k_wmi_pull_pdev_stats_rx (int *,struct ath10k_fw_stats_pdev*) ;
 int ath10k_wmi_pull_pdev_stats_tx (int *,struct ath10k_fw_stats_pdev*) ;
 int ath10k_wmi_pull_peer_stats (int *,struct ath10k_fw_stats_peer*) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int ath10k_wmi_10_2_4_op_pull_fw_stats(struct ath10k *ar,
           struct sk_buff *skb,
           struct ath10k_fw_stats *stats)
{
 const struct wmi_10_2_stats_event *ev = (void *)skb->data;
 u32 num_pdev_stats;
 u32 num_pdev_ext_stats;
 u32 num_peer_stats;
 int i;

 if (!skb_pull(skb, sizeof(*ev)))
  return -EPROTO;

 num_pdev_stats = __le32_to_cpu(ev->num_pdev_stats);
 num_pdev_ext_stats = __le32_to_cpu(ev->num_pdev_ext_stats);
 num_peer_stats = __le32_to_cpu(ev->num_peer_stats);

 for (i = 0; i < num_pdev_stats; i++) {
  const struct wmi_10_2_pdev_stats *src;
  struct ath10k_fw_stats_pdev *dst;

  src = (void *)skb->data;
  if (!skb_pull(skb, sizeof(*src)))
   return -EPROTO;

  dst = kzalloc(sizeof(*dst), GFP_ATOMIC);
  if (!dst)
   continue;

  ath10k_wmi_pull_pdev_stats_base(&src->base, dst);
  ath10k_wmi_pull_pdev_stats_tx(&src->tx, dst);
  ath10k_wmi_pull_pdev_stats_rx(&src->rx, dst);
  ath10k_wmi_pull_pdev_stats_extra(&src->extra, dst);


  list_add_tail(&dst->list, &stats->pdevs);
 }

 for (i = 0; i < num_pdev_ext_stats; i++) {
  const struct wmi_10_2_pdev_ext_stats *src;

  src = (void *)skb->data;
  if (!skb_pull(skb, sizeof(*src)))
   return -EPROTO;






 }



 for (i = 0; i < num_peer_stats; i++) {
  const struct wmi_10_2_4_ext_peer_stats *src;
  struct ath10k_fw_stats_peer *dst;
  int stats_len;

  if (test_bit(WMI_SERVICE_PEER_STATS, ar->wmi.svc_map))
   stats_len = sizeof(struct wmi_10_2_4_ext_peer_stats);
  else
   stats_len = sizeof(struct wmi_10_2_4_peer_stats);

  src = (void *)skb->data;
  if (!skb_pull(skb, stats_len))
   return -EPROTO;

  dst = kzalloc(sizeof(*dst), GFP_ATOMIC);
  if (!dst)
   continue;

  ath10k_wmi_pull_peer_stats(&src->common.old, dst);

  dst->peer_rx_rate = __le32_to_cpu(src->common.peer_rx_rate);

  if (ath10k_peer_stats_enabled(ar))
   dst->rx_duration = __le32_to_cpu(src->rx_duration);


  list_add_tail(&dst->list, &stats->peers);
 }

 return 0;
}
