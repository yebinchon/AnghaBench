
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct mwifiex_private {int bss_type; int bss_num; } ;
struct mwifiex_opt_sleep_confirm {int resp_ctrl; int size; int seq_num; int action; int command; } ;
struct TYPE_6__ {int period; } ;
struct TYPE_5__ {int num_cmd_sleep_cfm_host_to_card_failure; } ;
struct TYPE_4__ {int (* host_to_card ) (struct mwifiex_adapter*,int ,struct sk_buff*,int *) ;} ;
struct mwifiex_adapter {scalar_t__ iface_type; int pm_wakeup_card_req; TYPE_3__ sleep_period; int work_flags; int ps_state; TYPE_2__ dbg; int intf_hdr_len; struct sk_buff* sleep_cfm; TYPE_1__ if_ops; int seq_num; } ;


 int CMD ;
 int CMD_D ;
 int EBUSY ;
 int ENOMEM ;
 int ERROR ;
 int HostCmd_SET_SEQ_NO_BSS_INFO (int ,int ,int ) ;
 int MWIFIEX_BSS_ROLE_ANY ;
 int MWIFIEX_IS_HS_CONFIGURED ;
 int MWIFIEX_TYPE_CMD ;
 scalar_t__ MWIFIEX_TYPE_LEN ;
 scalar_t__ MWIFIEX_USB ;
 int MWIFIEX_USB_EP_CMD_EVENT ;
 int MWIFIEX_USB_TYPE_CMD ;
 int PS_STATE_SLEEP ;
 int PS_STATE_SLEEP_CFM ;
 int cpu_to_le16 (int ) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_dbg_dump (struct mwifiex_adapter*,int ,char*,struct mwifiex_opt_sleep_confirm*,int ) ;
 struct mwifiex_private* mwifiex_get_priv (struct mwifiex_adapter*,int ) ;
 int mwifiex_hs_activated_event (struct mwifiex_private*,int) ;
 int put_unaligned_le32 (int ,scalar_t__) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,int ) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int stub1 (struct mwifiex_adapter*,int ,struct sk_buff*,int *) ;
 int stub2 (struct mwifiex_adapter*,int ,struct sk_buff*,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int mwifiex_dnld_sleep_confirm_cmd(struct mwifiex_adapter *adapter)
{
 int ret;
 struct mwifiex_private *priv;
 struct mwifiex_opt_sleep_confirm *sleep_cfm_buf =
    (struct mwifiex_opt_sleep_confirm *)
      adapter->sleep_cfm->data;
 struct sk_buff *sleep_cfm_tmp;

 priv = mwifiex_get_priv(adapter, MWIFIEX_BSS_ROLE_ANY);

 adapter->seq_num++;
 sleep_cfm_buf->seq_num =
  cpu_to_le16((HostCmd_SET_SEQ_NO_BSS_INFO
     (adapter->seq_num, priv->bss_num,
      priv->bss_type)));

 mwifiex_dbg(adapter, CMD,
      "cmd: DNLD_CMD: %#x, act %#x, len %d, seqno %#x\n",
  le16_to_cpu(sleep_cfm_buf->command),
  le16_to_cpu(sleep_cfm_buf->action),
  le16_to_cpu(sleep_cfm_buf->size),
  le16_to_cpu(sleep_cfm_buf->seq_num));
 mwifiex_dbg_dump(adapter, CMD_D, "SLEEP_CFM buffer: ", sleep_cfm_buf,
    le16_to_cpu(sleep_cfm_buf->size));

 if (adapter->iface_type == MWIFIEX_USB) {
  sleep_cfm_tmp =
   dev_alloc_skb(sizeof(struct mwifiex_opt_sleep_confirm)
          + MWIFIEX_TYPE_LEN);
  if (!sleep_cfm_tmp) {
   mwifiex_dbg(adapter, ERROR,
        "SLEEP_CFM: dev_alloc_skb failed\n");
   return -ENOMEM;
  }

  skb_put(sleep_cfm_tmp, sizeof(struct mwifiex_opt_sleep_confirm)
   + MWIFIEX_TYPE_LEN);
  put_unaligned_le32(MWIFIEX_USB_TYPE_CMD, sleep_cfm_tmp->data);
  memcpy(sleep_cfm_tmp->data + MWIFIEX_TYPE_LEN,
         adapter->sleep_cfm->data,
         sizeof(struct mwifiex_opt_sleep_confirm));
  ret = adapter->if_ops.host_to_card(adapter,
         MWIFIEX_USB_EP_CMD_EVENT,
         sleep_cfm_tmp, ((void*)0));
  if (ret != -EBUSY)
   dev_kfree_skb_any(sleep_cfm_tmp);
 } else {
  skb_push(adapter->sleep_cfm, adapter->intf_hdr_len);
  ret = adapter->if_ops.host_to_card(adapter, MWIFIEX_TYPE_CMD,
         adapter->sleep_cfm, ((void*)0));
  skb_pull(adapter->sleep_cfm, adapter->intf_hdr_len);
 }

 if (ret == -1) {
  mwifiex_dbg(adapter, ERROR, "SLEEP_CFM: failed\n");
  adapter->dbg.num_cmd_sleep_cfm_host_to_card_failure++;
  return -1;
 }

 if (!le16_to_cpu(sleep_cfm_buf->resp_ctrl))

  adapter->ps_state = PS_STATE_SLEEP;
 else
  adapter->ps_state = PS_STATE_SLEEP_CFM;

 if (!le16_to_cpu(sleep_cfm_buf->resp_ctrl) &&
     (test_bit(MWIFIEX_IS_HS_CONFIGURED, &adapter->work_flags) &&
      !adapter->sleep_period.period)) {
  adapter->pm_wakeup_card_req = 1;
  mwifiex_hs_activated_event(mwifiex_get_priv
    (adapter, MWIFIEX_BSS_ROLE_ANY), 1);
 }

 return ret;
}
