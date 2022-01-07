
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k {int dummy; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int ) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_op_gen_pdev_resume(struct ath10k *ar)
{
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, 0);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 return skb;
}
