
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int addr; } ;
struct wmi_peer_set_param_cmd {TYPE_1__ peer_macaddr; void* param_value; void* param_id; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef enum wmi_peer_param { ____Placeholder_wmi_peer_param } wmi_peer_param ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 void* __cpu_to_le32 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int const*,int,int) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;
 int ether_addr_copy (int ,int const*) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_op_gen_peer_set_param(struct ath10k *ar, u32 vdev_id,
     const u8 *peer_addr,
     enum wmi_peer_param param_id,
     u32 param_value)
{
 struct wmi_peer_set_param_cmd *cmd;
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_peer_set_param_cmd *)skb->data;
 cmd->vdev_id = __cpu_to_le32(vdev_id);
 cmd->param_id = __cpu_to_le32(param_id);
 cmd->param_value = __cpu_to_le32(param_value);
 ether_addr_copy(cmd->peer_macaddr.addr, peer_addr);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi vdev %d peer 0x%pM set param %d value %d\n",
     vdev_id, peer_addr, param_id, param_value);
 return skb;
}
