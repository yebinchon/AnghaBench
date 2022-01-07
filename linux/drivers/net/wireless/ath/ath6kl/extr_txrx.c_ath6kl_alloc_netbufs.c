
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;


 int ATH6KL_BUFFER_SIZE ;
 struct sk_buff* ath6kl_buf_alloc (int ) ;
 int ath6kl_err (char*) ;
 int skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;

__attribute__((used)) static void ath6kl_alloc_netbufs(struct sk_buff_head *q, u16 num)
{
 struct sk_buff *skb;

 while (num) {
  skb = ath6kl_buf_alloc(ATH6KL_BUFFER_SIZE);
  if (!skb) {
   ath6kl_err("netbuf allocation failed\n");
   return;
  }
  skb_queue_tail(q, skb);
  num--;
 }
}
