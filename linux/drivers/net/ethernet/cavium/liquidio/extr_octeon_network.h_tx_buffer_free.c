
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;

__attribute__((used)) static inline void tx_buffer_free(void *buffer)
{
 dev_kfree_skb_any((struct sk_buff *)buffer);
}
