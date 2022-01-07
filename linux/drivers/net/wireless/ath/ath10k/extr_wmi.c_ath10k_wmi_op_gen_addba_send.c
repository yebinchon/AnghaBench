
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int addr; } ;
struct wmi_addba_send_cmd {void* buffersize; void* tid; TYPE_1__ peer_macaddr; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int EINVAL ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 void* __cpu_to_le32 (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int const*,int ,int ) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;
 int ether_addr_copy (int ,int const*) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_op_gen_addba_send(struct ath10k *ar, u32 vdev_id, const u8 *mac,
        u32 tid, u32 buf_size)
{
 struct wmi_addba_send_cmd *cmd;
 struct sk_buff *skb;

 if (!mac)
  return ERR_PTR(-EINVAL);

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_addba_send_cmd *)skb->data;
 cmd->vdev_id = __cpu_to_le32(vdev_id);
 ether_addr_copy(cmd->peer_macaddr.addr, mac);
 cmd->tid = __cpu_to_le32(tid);
 cmd->buffersize = __cpu_to_le32(buf_size);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi addba send vdev_id 0x%X mac_addr %pM tid %u bufsize %u\n",
     vdev_id, mac, tid, buf_size);
 return skb;
}
