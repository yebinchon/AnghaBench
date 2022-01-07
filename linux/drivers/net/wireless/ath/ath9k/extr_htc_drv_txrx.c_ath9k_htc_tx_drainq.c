
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ath9k_htc_priv {int dummy; } ;


 int ath9k_htc_tx_process (struct ath9k_htc_priv*,struct sk_buff*,int *) ;
 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;

__attribute__((used)) static inline void ath9k_htc_tx_drainq(struct ath9k_htc_priv *priv,
           struct sk_buff_head *queue)
{
 struct sk_buff *skb;

 while ((skb = skb_dequeue(queue)) != ((void*)0)) {
  ath9k_htc_tx_process(priv, skb, ((void*)0));
 }
}
