
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lbs_private {int mac_control; int radio_on; int authtype_auto; int event_fifo; scalar_t__* resp_len; scalar_t__ resp_idx; int driver_lock; int cmdpendingq; int cmdfreeq; int auto_deepsleep_timer; int tx_lockup_timer; int command_timer; int lock; int fw_waitq; int host_sleep_q; scalar_t__ is_host_sleep_activated; scalar_t__ is_host_sleep_configured; int scan_q; int ds_awake_q; scalar_t__ wakeup_dev_required; scalar_t__ deep_sleep_required; scalar_t__ is_auto_deep_sleep_enabled; scalar_t__ is_deep_sleep; int psstate; int psmode; int channel; int connect_status; int current_addr; } ;


 int CMD_ACT_MAC_RX_ON ;
 int CMD_ACT_MAC_TX_ON ;
 int DEFAULT_AD_HOC_CHANNEL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int LBS802_11POWERMODECAM ;
 int LBS_DISCONNECTED ;
 int PS_STATE_FULL_POWER ;
 int auto_deepsleep_timer_fn ;
 int eth_broadcast_addr (int ) ;
 int init_waitqueue_head (int *) ;
 int kfifo_alloc (int *,int,int ) ;
 scalar_t__ lbs_allocate_cmd_buffer (struct lbs_private*) ;
 int lbs_cmd_timeout_handler ;
 int lbs_tx_lockup_handler ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int lbs_init_adapter(struct lbs_private *priv)
{
 int ret;

 eth_broadcast_addr(priv->current_addr);

 priv->connect_status = LBS_DISCONNECTED;
 priv->channel = DEFAULT_AD_HOC_CHANNEL;
 priv->mac_control = CMD_ACT_MAC_RX_ON | CMD_ACT_MAC_TX_ON;
 priv->radio_on = 1;
 priv->psmode = LBS802_11POWERMODECAM;
 priv->psstate = PS_STATE_FULL_POWER;
 priv->is_deep_sleep = 0;
 priv->is_auto_deep_sleep_enabled = 0;
 priv->deep_sleep_required = 0;
 priv->wakeup_dev_required = 0;
 init_waitqueue_head(&priv->ds_awake_q);
 init_waitqueue_head(&priv->scan_q);
 priv->authtype_auto = 1;
 priv->is_host_sleep_configured = 0;
 priv->is_host_sleep_activated = 0;
 init_waitqueue_head(&priv->host_sleep_q);
 init_waitqueue_head(&priv->fw_waitq);
 mutex_init(&priv->lock);

 timer_setup(&priv->command_timer, lbs_cmd_timeout_handler, 0);
 timer_setup(&priv->tx_lockup_timer, lbs_tx_lockup_handler, 0);
 timer_setup(&priv->auto_deepsleep_timer, auto_deepsleep_timer_fn, 0);

 INIT_LIST_HEAD(&priv->cmdfreeq);
 INIT_LIST_HEAD(&priv->cmdpendingq);

 spin_lock_init(&priv->driver_lock);


 if (lbs_allocate_cmd_buffer(priv)) {
  pr_err("Out of memory allocating command buffers\n");
  ret = -ENOMEM;
  goto out;
 }
 priv->resp_idx = 0;
 priv->resp_len[0] = priv->resp_len[1] = 0;


 ret = kfifo_alloc(&priv->event_fifo, sizeof(u32) * 16, GFP_KERNEL);
 if (ret) {
  pr_err("Out of memory allocating event FIFO buffer\n");
  goto out;
 }

out:
 return ret;
}
