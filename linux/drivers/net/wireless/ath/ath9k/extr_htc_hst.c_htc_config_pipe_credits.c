
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct htc_target {int dev; int cmd_wait; int htc_flags; int credits; } ;
struct htc_frame_hdr {int dummy; } ;
struct htc_config_pipe_msg {int credits; int pipe_id; int message_id; } ;


 int EINVAL ;
 int ENDPOINT0 ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_ATOMIC ;
 int HTC_MSG_CONFIG_PIPE_ID ;
 int HTC_OP_CONFIG_PIPE_CREDITS ;
 int HZ ;
 int USB_WLAN_TX_PIPE ;
 struct sk_buff* alloc_skb (int,int ) ;
 int cpu_to_be16 (int ) ;
 int dev_err (int ,char*) ;
 int htc_issue_send (struct htc_target*,struct sk_buff*,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct htc_config_pipe_msg* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int htc_config_pipe_credits(struct htc_target *target)
{
 struct sk_buff *skb;
 struct htc_config_pipe_msg *cp_msg;
 int ret;
 unsigned long time_left;

 skb = alloc_skb(50 + sizeof(struct htc_frame_hdr), GFP_ATOMIC);
 if (!skb) {
  dev_err(target->dev, "failed to allocate send buffer\n");
  return -ENOMEM;
 }
 skb_reserve(skb, sizeof(struct htc_frame_hdr));

 cp_msg = skb_put(skb, sizeof(struct htc_config_pipe_msg));

 cp_msg->message_id = cpu_to_be16(HTC_MSG_CONFIG_PIPE_ID);
 cp_msg->pipe_id = USB_WLAN_TX_PIPE;
 cp_msg->credits = target->credits;

 target->htc_flags |= HTC_OP_CONFIG_PIPE_CREDITS;

 ret = htc_issue_send(target, skb, skb->len, 0, ENDPOINT0);
 if (ret)
  goto err;

 time_left = wait_for_completion_timeout(&target->cmd_wait, HZ);
 if (!time_left) {
  dev_err(target->dev, "HTC credit config timeout\n");
  kfree_skb(skb);
  return -ETIMEDOUT;
 }

 return 0;
err:
 kfree_skb(skb);
 return -EINVAL;
}
