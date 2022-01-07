
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ath10k_wmi {TYPE_2__* cmd; TYPE_1__* ops; } ;
struct ath10k {struct ath10k_wmi wmi; } ;
struct TYPE_4__ {int echo_cmdid; } ;
struct TYPE_3__ {struct sk_buff* (* gen_echo ) (struct ath10k*,int ) ;} ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int ath10k_wmi_cmd_send (struct ath10k*,struct sk_buff*,int ) ;
 struct sk_buff* stub1 (struct ath10k*,int ) ;

__attribute__((used)) static inline int
ath10k_wmi_echo(struct ath10k *ar, u32 value)
{
 struct ath10k_wmi *wmi = &ar->wmi;
 struct sk_buff *skb;

 if (!wmi->ops->gen_echo)
  return -EOPNOTSUPP;

 skb = wmi->ops->gen_echo(ar, value);
 if (IS_ERR(skb))
  return PTR_ERR(skb);

 return ath10k_wmi_cmd_send(ar, skb, wmi->cmd->echo_cmdid);
}
