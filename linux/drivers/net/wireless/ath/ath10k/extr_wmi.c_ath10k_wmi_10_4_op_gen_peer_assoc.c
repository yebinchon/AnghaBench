
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_peer_assoc_complete_arg {scalar_t__ peer_reassoc; int addr; int vdev_id; } ;
struct wmi_10_4_peer_assoc_complete_cmd {int dummy; } ;
struct sk_buff {int data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,char*) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,size_t) ;
 int ath10k_wmi_peer_assoc_check_arg (struct wmi_peer_assoc_complete_arg const*) ;
 int ath10k_wmi_peer_assoc_fill_10_4 (struct ath10k*,int ,struct wmi_peer_assoc_complete_arg const*) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_10_4_op_gen_peer_assoc(struct ath10k *ar,
      const struct wmi_peer_assoc_complete_arg *arg)
{
 size_t len = sizeof(struct wmi_10_4_peer_assoc_complete_cmd);
 struct sk_buff *skb;
 int ret;

 ret = ath10k_wmi_peer_assoc_check_arg(arg);
 if (ret)
  return ERR_PTR(ret);

 skb = ath10k_wmi_alloc_skb(ar, len);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 ath10k_wmi_peer_assoc_fill_10_4(ar, skb->data, arg);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi peer assoc vdev %d addr %pM (%s)\n",
     arg->vdev_id, arg->addr,
     arg->peer_reassoc ? "reassociate" : "new");
 return skb;
}
