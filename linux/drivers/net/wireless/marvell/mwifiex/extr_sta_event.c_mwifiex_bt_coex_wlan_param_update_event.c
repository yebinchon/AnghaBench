
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int len; int * data; } ;
struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct mwifiex_ie_types_header {int type; int len; } ;
struct mwifiex_ie_types_btcoex_scan_time {int max_scan_time; int min_scan_time; int coex_scan; } ;
struct mwifiex_ie_types_btcoex_aggr_win_size {int rx_win_size; int tx_win_size; int coex_win_size; } ;
struct mwifiex_adapter {int coex_rx_win_size; int coex_tx_win_size; int coex_win_size; void* coex_min_scan_time; int coex_scan; int dev; void* coex_max_scan_time; } ;
typedef int s32 ;




 int dev_dbg (int ,char*,int ,void*,int ,int ,int ) ;
 void* le16_to_cpu (int ) ;
 int mwifiex_coex_ampdu_rxwinsize (struct mwifiex_adapter*) ;
 int mwifiex_update_ampdu_txwinsize (struct mwifiex_adapter*) ;

void mwifiex_bt_coex_wlan_param_update_event(struct mwifiex_private *priv,
          struct sk_buff *event_skb)
{
 struct mwifiex_adapter *adapter = priv->adapter;
 struct mwifiex_ie_types_header *tlv;
 struct mwifiex_ie_types_btcoex_aggr_win_size *winsizetlv;
 struct mwifiex_ie_types_btcoex_scan_time *scantlv;
 s32 len = event_skb->len - sizeof(u32);
 u8 *cur_ptr = event_skb->data + sizeof(u32);
 u16 tlv_type, tlv_len;

 while (len >= sizeof(struct mwifiex_ie_types_header)) {
  tlv = (struct mwifiex_ie_types_header *)cur_ptr;
  tlv_len = le16_to_cpu(tlv->len);
  tlv_type = le16_to_cpu(tlv->type);

  if ((tlv_len + sizeof(struct mwifiex_ie_types_header)) > len)
   break;
  switch (tlv_type) {
  case 129:
   winsizetlv =
       (struct mwifiex_ie_types_btcoex_aggr_win_size *)tlv;
   adapter->coex_win_size = winsizetlv->coex_win_size;
   adapter->coex_tx_win_size =
    winsizetlv->tx_win_size;
   adapter->coex_rx_win_size =
    winsizetlv->rx_win_size;
   mwifiex_coex_ampdu_rxwinsize(adapter);
   mwifiex_update_ampdu_txwinsize(adapter);
   break;

  case 128:
   scantlv =
       (struct mwifiex_ie_types_btcoex_scan_time *)tlv;
   adapter->coex_scan = scantlv->coex_scan;
   adapter->coex_min_scan_time = le16_to_cpu(scantlv->min_scan_time);
   adapter->coex_max_scan_time = le16_to_cpu(scantlv->max_scan_time);
   break;

  default:
   break;
  }

  len -= tlv_len + sizeof(struct mwifiex_ie_types_header);
  cur_ptr += tlv_len +
   sizeof(struct mwifiex_ie_types_header);
 }

 dev_dbg(adapter->dev, "coex_scan=%d min_scan=%d coex_win=%d, tx_win=%d rx_win=%d\n",
  adapter->coex_scan, adapter->coex_min_scan_time,
  adapter->coex_win_size, adapter->coex_tx_win_size,
  adapter->coex_rx_win_size);
}
