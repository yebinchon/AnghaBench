
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
struct TYPE_5__ {struct sk_buff* (* gen_beacon_dma ) (struct ath10k*,int ,void const*,size_t,int ,int,int) ;} ;
struct TYPE_4__ {int pdev_send_bcn_cmdid; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int ath10k_wmi_cmd_send_nowait (struct ath10k*,struct sk_buff*,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* stub1 (struct ath10k*,int ,void const*,size_t,int ,int,int) ;

__attribute__((used)) static inline int
ath10k_wmi_beacon_send_ref_nowait(struct ath10k *ar, u32 vdev_id,
      const void *bcn, size_t bcn_len,
      u32 bcn_paddr, bool dtim_zero,
      bool deliver_cab)
{
 struct sk_buff *skb;
 int ret;

 if (!ar->wmi.ops->gen_beacon_dma)
  return -EOPNOTSUPP;

 skb = ar->wmi.ops->gen_beacon_dma(ar, vdev_id, bcn, bcn_len, bcn_paddr,
       dtim_zero, deliver_cab);
 if (IS_ERR(skb))
  return PTR_ERR(skb);

 ret = ath10k_wmi_cmd_send_nowait(ar, skb,
      ar->wmi.cmd->pdev_send_bcn_cmdid);
 if (ret) {
  dev_kfree_skb(skb);
  return ret;
 }

 return 0;
}
