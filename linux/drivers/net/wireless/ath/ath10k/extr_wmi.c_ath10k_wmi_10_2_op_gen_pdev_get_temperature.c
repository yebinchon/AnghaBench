
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int ) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_10_2_op_gen_pdev_get_temperature(struct ath10k *ar)
{
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, 0);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi pdev get temperature\n");
 return skb;
}
