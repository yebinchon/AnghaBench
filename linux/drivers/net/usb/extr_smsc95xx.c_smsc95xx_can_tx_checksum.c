
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; unsigned int csum_offset; } ;


 unsigned int skb_checksum_start_offset (struct sk_buff*) ;

__attribute__((used)) static bool smsc95xx_can_tx_checksum(struct sk_buff *skb)
{
       unsigned int len = skb->len - skb_checksum_start_offset(skb);

       if (skb->len <= 45)
        return 0;
       return skb->csum_offset < (len - (4 + 1));
}
