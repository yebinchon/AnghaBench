
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {TYPE_1__* cmd; TYPE_2__* ops; } ;
struct ath10k {TYPE_3__ wmi; } ;
struct TYPE_5__ {struct sk_buff* (* gen_bcn_tmpl ) (struct ath10k*,int ,int ,struct sk_buff*,int ,int ,void*,size_t) ;} ;
struct TYPE_4__ {int bcn_tmpl_cmdid; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int ath10k_wmi_cmd_send (struct ath10k*,struct sk_buff*,int ) ;
 struct sk_buff* stub1 (struct ath10k*,int ,int ,struct sk_buff*,int ,int ,void*,size_t) ;

__attribute__((used)) static inline int
ath10k_wmi_bcn_tmpl(struct ath10k *ar, u32 vdev_id, u32 tim_ie_offset,
      struct sk_buff *bcn, u32 prb_caps, u32 prb_erp,
      void *prb_ies, size_t prb_ies_len)
{
 struct sk_buff *skb;

 if (!ar->wmi.ops->gen_bcn_tmpl)
  return -EOPNOTSUPP;

 skb = ar->wmi.ops->gen_bcn_tmpl(ar, vdev_id, tim_ie_offset, bcn,
     prb_caps, prb_erp, prb_ies,
     prb_ies_len);
 if (IS_ERR(skb))
  return PTR_ERR(skb);

 return ath10k_wmi_cmd_send(ar, skb, ar->wmi.cmd->bcn_tmpl_cmdid);
}
