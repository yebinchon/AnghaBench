
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct wil_rx_status_extended {int dummy; } ;
struct wil_rx_status_compressed {int dummy; } ;
struct wil_net_stats {int rx_non_data_frame; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {scalar_t__ use_compressed_rx_status; struct wil6210_vif** vifs; } ;
struct sk_buff {void const* data; } ;


 int DUMP_PREFIX_NONE ;
 int DUMP_PREFIX_OFFSET ;
 int EAGAIN ;
 scalar_t__ IEEE80211_FTYPE_DATA ;
 int le16_to_cpu (int ) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int wil_dbg_txrx (struct wil6210_priv*,char*,scalar_t__,...) ;
 int wil_hex_dump_txrx (char*,int ,int,int,void const*,int,int) ;
 scalar_t__ wil_is_back_req (scalar_t__) ;
 int wil_rx_bar (struct wil6210_priv*,struct wil6210_vif*,int,int,int ) ;
 scalar_t__ wil_rx_status_get_fc1 (struct wil6210_priv*,void*) ;
 scalar_t__ wil_rx_status_get_frame_type (struct wil6210_priv*,void*) ;
 int wil_rx_status_get_mid (void*) ;
 int wil_rx_status_get_seq (struct wil6210_priv*,void*) ;
 int wil_rx_status_get_tid (void*) ;

__attribute__((used)) static int wil_check_bar(struct wil6210_priv *wil, void *msg, int cid,
    struct sk_buff *skb, struct wil_net_stats *stats)
{
 u8 ftype;
 u8 fc1;
 int mid;
 int tid;
 u16 seq;
 struct wil6210_vif *vif;

 ftype = wil_rx_status_get_frame_type(wil, msg);
 if (ftype == IEEE80211_FTYPE_DATA)
  return 0;

 fc1 = wil_rx_status_get_fc1(wil, msg);
 mid = wil_rx_status_get_mid(msg);
 tid = wil_rx_status_get_tid(msg);
 seq = le16_to_cpu(wil_rx_status_get_seq(wil, msg));
 vif = wil->vifs[mid];

 if (unlikely(!vif)) {
  wil_dbg_txrx(wil, "RX descriptor with invalid mid %d", mid);
  return -EAGAIN;
 }

 wil_dbg_txrx(wil,
       "Non-data frame FC[7:0] 0x%02x MID %d CID %d TID %d Seq 0x%03x\n",
       fc1, mid, cid, tid, seq);
 if (stats)
  stats->rx_non_data_frame++;
 if (wil_is_back_req(fc1)) {
  wil_dbg_txrx(wil,
        "BAR: MID %d CID %d TID %d Seq 0x%03x\n",
        mid, cid, tid, seq);
  wil_rx_bar(wil, vif, cid, tid, seq);
 } else {
  u32 sz = wil->use_compressed_rx_status ?
   sizeof(struct wil_rx_status_compressed) :
   sizeof(struct wil_rx_status_extended);




  wil_dbg_txrx(wil,
        "Unhandled non-data frame FC[7:0] 0x%02x MID %d CID %d TID %d Seq 0x%03x\n",
        fc1, mid, cid, tid, seq);
  wil_hex_dump_txrx("RxS ", DUMP_PREFIX_NONE, 32, 4,
      (const void *)msg, sz, 0);
  wil_hex_dump_txrx("Rx ", DUMP_PREFIX_OFFSET, 16, 1,
      skb->data, skb_headlen(skb), 0);
 }

 return -EAGAIN;
}
