
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct wmi_tlv_vdev_stats {int dummy; } ;
struct wmi_tlv_stats_ev {int num_peer_stats_extd; int stats_id; int num_chan_stats; int num_bcnflt_stats; int num_peer_stats; int num_vdev_stats; int num_pdev_stats; } ;
struct wmi_tlv_peer_stats_extd {int rx_duration_high; int rx_duration; } ;
struct wmi_pdev_stats {int rx; int tx; int base; } ;
struct wmi_10x_peer_stats {int peer_rx_rate; int old; } ;
struct sk_buff {int len; int data; } ;
struct ath10k_fw_stats_vdev {int list; } ;
struct ath10k_fw_stats_peer {int rx_duration; int list; void* peer_rx_rate; } ;
struct ath10k_fw_stats_pdev {int list; } ;
struct ath10k_fw_stats {int peers; int vdevs; int pdevs; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int EPROTO ;
 unsigned long FIELD_GET (int ,unsigned long) ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (void const**) ;
 int PTR_ERR (void const**) ;
 int WMI_TLV_PEER_RX_DURATION_HIGH_MASK ;
 int WMI_TLV_PEER_RX_DURATION_HIGH_VALID_BIT ;
 int WMI_TLV_PEER_RX_DURATION_SHIFT ;
 int WMI_TLV_STAT_PEER_EXTD ;
 size_t WMI_TLV_TAG_ARRAY_BYTE ;
 size_t WMI_TLV_TAG_STRUCT_STATS_EVENT ;
 void* __le32_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int,int,int,int,int) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_pull_pdev_stats_base (int *,struct ath10k_fw_stats_pdev*) ;
 int ath10k_wmi_pull_pdev_stats_rx (int *,struct ath10k_fw_stats_pdev*) ;
 int ath10k_wmi_pull_pdev_stats_tx (int *,struct ath10k_fw_stats_pdev*) ;
 int ath10k_wmi_pull_peer_stats (int *,struct ath10k_fw_stats_peer*) ;
 size_t ath10k_wmi_tlv_len (void const*) ;
 void** ath10k_wmi_tlv_parse_alloc (struct ath10k*,int ,int ,int ) ;
 int ath10k_wmi_tlv_pull_vdev_stats (struct wmi_tlv_vdev_stats const*,struct ath10k_fw_stats_vdev*) ;
 int kfree (void const**) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static int ath10k_wmi_tlv_op_pull_fw_stats(struct ath10k *ar,
        struct sk_buff *skb,
        struct ath10k_fw_stats *stats)
{
 const void **tb;
 const struct wmi_tlv_stats_ev *ev;
 u32 num_peer_stats_extd;
 const void *data;
 u32 num_pdev_stats;
 u32 num_vdev_stats;
 u32 num_peer_stats;
 u32 num_bcnflt_stats;
 u32 num_chan_stats;
 size_t data_len;
 u32 stats_id;
 int ret;
 int i;

 tb = ath10k_wmi_tlv_parse_alloc(ar, skb->data, skb->len, GFP_ATOMIC);
 if (IS_ERR(tb)) {
  ret = PTR_ERR(tb);
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 ev = tb[WMI_TLV_TAG_STRUCT_STATS_EVENT];
 data = tb[WMI_TLV_TAG_ARRAY_BYTE];

 if (!ev || !data) {
  kfree(tb);
  return -EPROTO;
 }

 data_len = ath10k_wmi_tlv_len(data);
 num_pdev_stats = __le32_to_cpu(ev->num_pdev_stats);
 num_vdev_stats = __le32_to_cpu(ev->num_vdev_stats);
 num_peer_stats = __le32_to_cpu(ev->num_peer_stats);
 num_bcnflt_stats = __le32_to_cpu(ev->num_bcnflt_stats);
 num_chan_stats = __le32_to_cpu(ev->num_chan_stats);
 stats_id = __le32_to_cpu(ev->stats_id);
 num_peer_stats_extd = __le32_to_cpu(ev->num_peer_stats_extd);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi tlv stats update pdev %i vdev %i peer %i bcnflt %i chan %i peer_extd %i\n",
     num_pdev_stats, num_vdev_stats, num_peer_stats,
     num_bcnflt_stats, num_chan_stats, num_peer_stats_extd);

 for (i = 0; i < num_pdev_stats; i++) {
  const struct wmi_pdev_stats *src;
  struct ath10k_fw_stats_pdev *dst;

  src = data;
  if (data_len < sizeof(*src)) {
   kfree(tb);
   return -EPROTO;
  }

  data += sizeof(*src);
  data_len -= sizeof(*src);

  dst = kzalloc(sizeof(*dst), GFP_ATOMIC);
  if (!dst)
   continue;

  ath10k_wmi_pull_pdev_stats_base(&src->base, dst);
  ath10k_wmi_pull_pdev_stats_tx(&src->tx, dst);
  ath10k_wmi_pull_pdev_stats_rx(&src->rx, dst);
  list_add_tail(&dst->list, &stats->pdevs);
 }

 for (i = 0; i < num_vdev_stats; i++) {
  const struct wmi_tlv_vdev_stats *src;
  struct ath10k_fw_stats_vdev *dst;

  src = data;
  if (data_len < sizeof(*src)) {
   kfree(tb);
   return -EPROTO;
  }

  data += sizeof(*src);
  data_len -= sizeof(*src);

  dst = kzalloc(sizeof(*dst), GFP_ATOMIC);
  if (!dst)
   continue;

  ath10k_wmi_tlv_pull_vdev_stats(src, dst);
  list_add_tail(&dst->list, &stats->vdevs);
 }

 for (i = 0; i < num_peer_stats; i++) {
  const struct wmi_10x_peer_stats *src;
  struct ath10k_fw_stats_peer *dst;

  src = data;
  if (data_len < sizeof(*src)) {
   kfree(tb);
   return -EPROTO;
  }

  data += sizeof(*src);
  data_len -= sizeof(*src);

  dst = kzalloc(sizeof(*dst), GFP_ATOMIC);
  if (!dst)
   continue;

  ath10k_wmi_pull_peer_stats(&src->old, dst);
  dst->peer_rx_rate = __le32_to_cpu(src->peer_rx_rate);

  if (stats_id & WMI_TLV_STAT_PEER_EXTD) {
   const struct wmi_tlv_peer_stats_extd *extd;
   unsigned long rx_duration_high;

   extd = data + sizeof(*src) * (num_peer_stats - i - 1)
          + sizeof(*extd) * i;

   dst->rx_duration = __le32_to_cpu(extd->rx_duration);
   rx_duration_high = __le32_to_cpu
      (extd->rx_duration_high);

   if (test_bit(WMI_TLV_PEER_RX_DURATION_HIGH_VALID_BIT,
         &rx_duration_high)) {
    rx_duration_high =
     FIELD_GET(WMI_TLV_PEER_RX_DURATION_HIGH_MASK,
        rx_duration_high);
    dst->rx_duration |= (u64)rx_duration_high <<
          WMI_TLV_PEER_RX_DURATION_SHIFT;
   }
  }

  list_add_tail(&dst->list, &stats->peers);
 }

 kfree(tb);
 return 0;
}
