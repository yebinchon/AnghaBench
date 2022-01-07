
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data_len; int csum_level; int ip_summed; int truesize; } ;
struct napi_struct {int dummy; } ;
struct be_rx_page_info {scalar_t__ page_offset; int page; } ;
struct be_rx_obj {struct be_adapter* adapter; } ;
struct be_rx_compl_info {scalar_t__ pkt_size; scalar_t__ num_rcvd; int vlan_tag; scalar_t__ vlanf; int tunneled; int rss_hash; } ;
struct be_adapter {TYPE_1__* netdev; struct be_rx_obj* rx_obj; } ;
struct TYPE_4__ {scalar_t__ nr_frags; int * frags; } ;
struct TYPE_3__ {int features; } ;


 int BUG_ON (int) ;
 int CHECKSUM_UNNECESSARY ;
 int ETH_P_8021Q ;
 scalar_t__ MAX_SKB_FRAGS ;
 int NETIF_F_RXHASH ;
 int PKT_HASH_TYPE_L3 ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int be_rx_compl_discard (struct be_rx_obj*,struct be_rx_compl_info*) ;
 struct be_rx_page_info* get_rx_page_info (struct be_rx_obj*) ;
 int htons (int ) ;
 int memset (struct be_rx_page_info*,int ,int) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 struct sk_buff* napi_get_frags (struct napi_struct*) ;
 int napi_gro_frags (struct napi_struct*) ;
 int put_page (int ) ;
 scalar_t__ rx_frag_size ;
 int skb_frag_off_set (int *,scalar_t__) ;
 int skb_frag_set_page (struct sk_buff*,scalar_t__,int ) ;
 int skb_frag_size_add (int *,scalar_t__) ;
 int skb_frag_size_set (int *,int ) ;
 int skb_record_rx_queue (struct sk_buff*,int) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void be_rx_compl_process_gro(struct be_rx_obj *rxo,
        struct napi_struct *napi,
        struct be_rx_compl_info *rxcp)
{
 struct be_adapter *adapter = rxo->adapter;
 struct be_rx_page_info *page_info;
 struct sk_buff *skb = ((void*)0);
 u16 remaining, curr_frag_len;
 u16 i, j;

 skb = napi_get_frags(napi);
 if (!skb) {
  be_rx_compl_discard(rxo, rxcp);
  return;
 }

 remaining = rxcp->pkt_size;
 for (i = 0, j = -1; i < rxcp->num_rcvd; i++) {
  page_info = get_rx_page_info(rxo);

  curr_frag_len = min(remaining, rx_frag_size);


  if (i == 0 || page_info->page_offset == 0) {

   j++;
   skb_frag_set_page(skb, j, page_info->page);
   skb_frag_off_set(&skb_shinfo(skb)->frags[j],
      page_info->page_offset);
   skb_frag_size_set(&skb_shinfo(skb)->frags[j], 0);
  } else {
   put_page(page_info->page);
  }
  skb_frag_size_add(&skb_shinfo(skb)->frags[j], curr_frag_len);
  skb->truesize += rx_frag_size;
  remaining -= curr_frag_len;
  memset(page_info, 0, sizeof(*page_info));
 }
 BUG_ON(j > MAX_SKB_FRAGS);

 skb_shinfo(skb)->nr_frags = j + 1;
 skb->len = rxcp->pkt_size;
 skb->data_len = rxcp->pkt_size;
 skb->ip_summed = CHECKSUM_UNNECESSARY;
 skb_record_rx_queue(skb, rxo - &adapter->rx_obj[0]);
 if (adapter->netdev->features & NETIF_F_RXHASH)
  skb_set_hash(skb, rxcp->rss_hash, PKT_HASH_TYPE_L3);

 skb->csum_level = rxcp->tunneled;

 if (rxcp->vlanf)
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), rxcp->vlan_tag);

 napi_gro_frags(napi);
}
