
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ wmi; } ;
struct TYPE_3__ {int (* rx ) (struct ath10k*,struct sk_buff*) ;} ;


 int EOPNOTSUPP ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int stub1 (struct ath10k*,struct sk_buff*) ;

__attribute__((used)) static inline int
ath10k_wmi_rx(struct ath10k *ar, struct sk_buff *skb)
{
 if (WARN_ON_ONCE(!ar->wmi.ops->rx))
  return -EOPNOTSUPP;

 ar->wmi.ops->rx(ar, skb);
 return 0;
}
