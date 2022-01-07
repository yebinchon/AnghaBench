
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct wmi_cmd_hdr {int dummy; } ;
struct wmi {int op_mutex; int cmd_wait; scalar_t__ cmd_rsp_len; int * cmd_rsp_buf; int stopped; TYPE_1__* drv_priv; } ;
struct sk_buff {int dummy; } ;
struct htc_frame_hdr {int dummy; } ;
struct ath_hw {int ah_flags; } ;
struct ath_common {int dummy; } ;
typedef enum wmi_cmd_id { ____Placeholder_wmi_cmd_id } wmi_cmd_id ;
struct TYPE_2__ {struct ath_hw* ah; } ;


 int AH_UNPLUGGED ;
 int ENOMEM ;
 int EPROTO ;
 int ETIMEDOUT ;
 int GFP_ATOMIC ;
 int WMI ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_wmi_cmd_issue (struct wmi*,struct sk_buff*,int,scalar_t__) ;
 int ath_dbg (struct ath_common*,int ,char*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skb_put_data (struct sk_buff*,int *,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int ) ;
 unsigned long wait_for_completion_timeout (int *,scalar_t__) ;
 int wmi_cmd_to_name (int) ;

int ath9k_wmi_cmd(struct wmi *wmi, enum wmi_cmd_id cmd_id,
    u8 *cmd_buf, u32 cmd_len,
    u8 *rsp_buf, u32 rsp_len,
    u32 timeout)
{
 struct ath_hw *ah = wmi->drv_priv->ah;
 struct ath_common *common = ath9k_hw_common(ah);
 u16 headroom = sizeof(struct htc_frame_hdr) +
         sizeof(struct wmi_cmd_hdr);
 struct sk_buff *skb;
 unsigned long time_left;
 int ret = 0;

 if (ah->ah_flags & AH_UNPLUGGED)
  return 0;

 skb = alloc_skb(headroom + cmd_len, GFP_ATOMIC);
 if (!skb)
  return -ENOMEM;

 skb_reserve(skb, headroom);

 if (cmd_len != 0 && cmd_buf != ((void*)0)) {
  skb_put_data(skb, cmd_buf, cmd_len);
 }

 mutex_lock(&wmi->op_mutex);


 if (unlikely(wmi->stopped)) {
  ret = -EPROTO;
  goto out;
 }


 wmi->cmd_rsp_buf = rsp_buf;
 wmi->cmd_rsp_len = rsp_len;

 ret = ath9k_wmi_cmd_issue(wmi, skb, cmd_id, cmd_len);
 if (ret)
  goto out;

 time_left = wait_for_completion_timeout(&wmi->cmd_wait, timeout);
 if (!time_left) {
  ath_dbg(common, WMI, "Timeout waiting for WMI command: %s\n",
   wmi_cmd_to_name(cmd_id));
  mutex_unlock(&wmi->op_mutex);
  kfree_skb(skb);
  return -ETIMEDOUT;
 }

 mutex_unlock(&wmi->op_mutex);

 return 0;

out:
 ath_dbg(common, WMI, "WMI failure for: %s\n", wmi_cmd_to_name(cmd_id));
 mutex_unlock(&wmi->op_mutex);
 kfree_skb(skb);

 return ret;
}
