
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int addr; } ;
struct wmi_ap_ps_peer_cmd {TYPE_1__ peer_macaddr; void* param_value; void* param_id; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef enum wmi_ap_ps_peer_param { ____Placeholder_wmi_ap_ps_peer_param } wmi_ap_ps_peer_param ;


 int ATH10K_DBG_WMI ;
 int EINVAL ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 void* __cpu_to_le32 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int,int,int const*) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;
 int ether_addr_copy (int ,int const*) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_op_gen_set_ap_ps(struct ath10k *ar, u32 vdev_id, const u8 *mac,
       enum wmi_ap_ps_peer_param param_id, u32 value)
{
 struct wmi_ap_ps_peer_cmd *cmd;
 struct sk_buff *skb;

 if (!mac)
  return ERR_PTR(-EINVAL);

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_ap_ps_peer_cmd *)skb->data;
 cmd->vdev_id = __cpu_to_le32(vdev_id);
 cmd->param_id = __cpu_to_le32(param_id);
 cmd->param_value = __cpu_to_le32(value);
 ether_addr_copy(cmd->peer_macaddr.addr, mac);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi ap ps param vdev_id 0x%X param %d value %d mac_addr %pM\n",
     vdev_id, param_id, value, mac);
 return skb;
}
