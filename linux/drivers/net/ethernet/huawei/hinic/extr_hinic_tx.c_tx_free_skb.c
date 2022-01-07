
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hinic_sge {int dummy; } ;
struct hinic_dev {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int tx_unmap_skb (struct hinic_dev*,struct sk_buff*,struct hinic_sge*) ;

__attribute__((used)) static void tx_free_skb(struct hinic_dev *nic_dev, struct sk_buff *skb,
   struct hinic_sge *sges)
{
 tx_unmap_skb(nic_dev, skb, sges);

 dev_kfree_skb_any(skb);
}
