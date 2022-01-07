
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct i2400m_pl_data_hdr {scalar_t__ reserved; } ;


 int ETH_HLEN ;
 int skb_pull (struct sk_buff*,int ) ;
 struct i2400m_pl_data_hdr* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static
void i2400m_tx_prep_header(struct sk_buff *skb)
{
 struct i2400m_pl_data_hdr *pl_hdr;
 skb_pull(skb, ETH_HLEN);
 pl_hdr = skb_push(skb, sizeof(*pl_hdr));
 pl_hdr->reserved = 0;
}
