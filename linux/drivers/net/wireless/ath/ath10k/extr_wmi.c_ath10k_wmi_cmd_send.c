
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tx_credits_wq; } ;
struct ath10k {int restart_work; int workqueue; int dev_flags; TYPE_1__ wmi; } ;


 int ATH10K_FLAG_CRASH_FLUSH ;
 int EAGAIN ;
 int EOPNOTSUPP ;
 int ESHUTDOWN ;
 int HZ ;
 scalar_t__ WMI_CMD_UNSUPPORTED ;
 int ath10k_warn (struct ath10k*,char*,scalar_t__) ;
 int ath10k_wmi_cmd_send_nowait (struct ath10k*,struct sk_buff*,scalar_t__) ;
 int ath10k_wmi_tx_beacons_nowait (struct ath10k*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int might_sleep () ;
 int queue_work (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_timeout (int ,int ,int) ;

int ath10k_wmi_cmd_send(struct ath10k *ar, struct sk_buff *skb, u32 cmd_id)
{
 int ret = -EOPNOTSUPP;

 might_sleep();

 if (cmd_id == WMI_CMD_UNSUPPORTED) {
  ath10k_warn(ar, "wmi command %d is not supported by firmware\n",
       cmd_id);
  return ret;
 }

 wait_event_timeout(ar->wmi.tx_credits_wq, ({

  ath10k_wmi_tx_beacons_nowait(ar);

  ret = ath10k_wmi_cmd_send_nowait(ar, skb, cmd_id);

  if (ret && test_bit(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags))
   ret = -ESHUTDOWN;

  (ret != -EAGAIN);
 }), 3 * HZ);

 if (ret)
  dev_kfree_skb_any(skb);

 if (ret == -EAGAIN) {
  ath10k_warn(ar, "wmi command %d timeout, restarting hardware\n",
       cmd_id);
  queue_work(ar->workqueue, &ar->restart_work);
 }

 return ret;
}
