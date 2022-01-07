
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ath10k_fw_stats {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ wmi; } ;
struct TYPE_3__ {int (* pull_fw_stats ) (struct ath10k*,struct sk_buff*,struct ath10k_fw_stats*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct ath10k*,struct sk_buff*,struct ath10k_fw_stats*) ;

__attribute__((used)) static inline int
ath10k_wmi_pull_fw_stats(struct ath10k *ar, struct sk_buff *skb,
    struct ath10k_fw_stats *stats)
{
 if (!ar->wmi.ops->pull_fw_stats)
  return -EOPNOTSUPP;

 return ar->wmi.ops->pull_fw_stats(ar, skb, stats);
}
