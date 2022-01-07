
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct wmi_vdev_install_key_cmd {int key_data; TYPE_1__ peer_macaddr; void* key_rxmic_len; void* key_txmic_len; void* key_len; void* key_cipher; void* key_flags; void* key_idx; void* vdev_id; } ;
struct wmi_vdev_install_key_arg {scalar_t__ key_cipher; scalar_t__ key_len; scalar_t__ vdev_id; scalar_t__ key_idx; scalar_t__ key_flags; scalar_t__ key_txmic_len; scalar_t__ key_rxmic_len; int * key_data; int macaddr; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int EINVAL ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 scalar_t__ WMI_CIPHER_NONE ;
 void* __cpu_to_le32 (scalar_t__) ;
 int ath10k_dbg (struct ath10k*,int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,scalar_t__) ;
 int ether_addr_copy (int ,int ) ;
 int memcpy (int ,int *,scalar_t__) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_op_gen_vdev_install_key(struct ath10k *ar,
       const struct wmi_vdev_install_key_arg *arg)
{
 struct wmi_vdev_install_key_cmd *cmd;
 struct sk_buff *skb;

 if (arg->key_cipher == WMI_CIPHER_NONE && arg->key_data != ((void*)0))
  return ERR_PTR(-EINVAL);
 if (arg->key_cipher != WMI_CIPHER_NONE && arg->key_data == ((void*)0))
  return ERR_PTR(-EINVAL);

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd) + arg->key_len);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_vdev_install_key_cmd *)skb->data;
 cmd->vdev_id = __cpu_to_le32(arg->vdev_id);
 cmd->key_idx = __cpu_to_le32(arg->key_idx);
 cmd->key_flags = __cpu_to_le32(arg->key_flags);
 cmd->key_cipher = __cpu_to_le32(arg->key_cipher);
 cmd->key_len = __cpu_to_le32(arg->key_len);
 cmd->key_txmic_len = __cpu_to_le32(arg->key_txmic_len);
 cmd->key_rxmic_len = __cpu_to_le32(arg->key_rxmic_len);

 if (arg->macaddr)
  ether_addr_copy(cmd->peer_macaddr.addr, arg->macaddr);
 if (arg->key_data)
  memcpy(cmd->key_data, arg->key_data, arg->key_len);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi vdev install key idx %d cipher %d len %d\n",
     arg->key_idx, arg->key_cipher, arg->key_len);
 return skb;
}
