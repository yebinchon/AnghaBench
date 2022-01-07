
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct be_queue_info {size_t tail; } ;
struct be_tx_obj {struct be_queue_info q; struct sk_buff** sent_skb_list; } ;
struct be_eth_wrb {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_consume_skb_any (struct sk_buff*) ;
 int queue_tail_inc (struct be_queue_info*) ;
 struct be_eth_wrb* queue_tail_node (struct be_queue_info*) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 int unmap_tx_frag (int *,struct be_eth_wrb*,int) ;

__attribute__((used)) static u16 be_tx_compl_process(struct be_adapter *adapter,
          struct be_tx_obj *txo, u16 last_index)
{
 struct sk_buff **sent_skbs = txo->sent_skb_list;
 struct be_queue_info *txq = &txo->q;
 struct sk_buff *skb = ((void*)0);
 bool unmap_skb_hdr = 0;
 struct be_eth_wrb *wrb;
 u16 num_wrbs = 0;
 u32 frag_index;

 do {
  if (sent_skbs[txq->tail]) {

   if (skb)
    dev_consume_skb_any(skb);
   skb = sent_skbs[txq->tail];
   sent_skbs[txq->tail] = ((void*)0);
   queue_tail_inc(txq);
   num_wrbs++;
   unmap_skb_hdr = 1;
  }
  wrb = queue_tail_node(txq);
  frag_index = txq->tail;
  unmap_tx_frag(&adapter->pdev->dev, wrb,
         (unmap_skb_hdr && skb_headlen(skb)));
  unmap_skb_hdr = 0;
  queue_tail_inc(txq);
  num_wrbs++;
 } while (frag_index != last_index);
 dev_consume_skb_any(skb);

 return num_wrbs;
}
