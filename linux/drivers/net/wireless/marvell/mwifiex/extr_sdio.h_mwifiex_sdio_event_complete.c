
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mwifiex_adapter {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;

__attribute__((used)) static inline int mwifiex_sdio_event_complete(struct mwifiex_adapter *adapter,
           struct sk_buff *skb)
{
 dev_kfree_skb_any(skb);
 return 0;
}
