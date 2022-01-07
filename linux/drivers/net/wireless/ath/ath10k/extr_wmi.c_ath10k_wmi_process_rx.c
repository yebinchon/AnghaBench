
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k {int dummy; } ;


 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_rx (struct ath10k*,struct sk_buff*) ;

__attribute__((used)) static void ath10k_wmi_process_rx(struct ath10k *ar, struct sk_buff *skb)
{
 int ret;

 ret = ath10k_wmi_rx(ar, skb);
 if (ret)
  ath10k_warn(ar, "failed to process wmi rx: %d\n", ret);
}
