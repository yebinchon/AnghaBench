
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct be_wrb_params {int dummy; } ;
struct be_queue_info {int used; } ;
struct be_tx_obj {size_t last_req_hdr; int pend_wrb_cnt; scalar_t__ last_req_wrb_cnt; struct sk_buff** sent_skb_list; struct be_queue_info q; } ;
struct be_eth_hdr_wrb {int dummy; } ;
struct be_adapter {int dummy; } ;


 int BUG_ON (struct sk_buff*) ;
 int atomic_add (scalar_t__,int *) ;
 int be_dws_cpu_to_le (struct be_eth_hdr_wrb*,int) ;
 struct be_eth_hdr_wrb* queue_index_node (struct be_queue_info*,size_t) ;
 scalar_t__ skb_wrb_cnt (struct sk_buff*) ;
 int wrb_fill_hdr (struct be_adapter*,struct be_eth_hdr_wrb*,struct be_wrb_params*,struct sk_buff*) ;

__attribute__((used)) static void be_tx_setup_wrb_hdr(struct be_adapter *adapter,
    struct be_tx_obj *txo,
    struct be_wrb_params *wrb_params,
    struct sk_buff *skb, u16 head)
{
 u32 num_frags = skb_wrb_cnt(skb);
 struct be_queue_info *txq = &txo->q;
 struct be_eth_hdr_wrb *hdr = queue_index_node(txq, head);

 wrb_fill_hdr(adapter, hdr, wrb_params, skb);
 be_dws_cpu_to_le(hdr, sizeof(*hdr));

 BUG_ON(txo->sent_skb_list[head]);
 txo->sent_skb_list[head] = skb;
 txo->last_req_hdr = head;
 atomic_add(num_frags, &txq->used);
 txo->last_req_wrb_cnt = num_frags;
 txo->pend_wrb_cnt += num_frags;
}
