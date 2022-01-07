
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct urb {int dummy; } ;
struct TYPE_6__ {int ctrlmode; int state; } ;
struct ucan_priv {int netdev; TYPE_3__ can; TYPE_2__* ctl_msg_buffer; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {TYPE_1__ cmd_start; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int CAN_CTRLMODE_ONE_SHOT ;
 int CAN_STATE_ERROR_ACTIVE ;
 int UCAN_COMMAND_RESET ;
 int UCAN_COMMAND_START ;
 int UCAN_COMMAND_STOP ;
 int UCAN_MAX_RX_URBS ;
 int UCAN_MODE_3_SAMPLES ;
 int UCAN_MODE_BERR_REPORT ;
 int UCAN_MODE_LOOPBACK ;
 int UCAN_MODE_ONE_SHOT ;
 int UCAN_MODE_SILENT ;
 int cpu_to_le16 (int ) ;
 int netdev_err (int ,char*,int) ;
 struct ucan_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int ucan_alloc_context_array (struct ucan_priv*) ;
 int ucan_cleanup_rx_urbs (struct ucan_priv*,struct urb**) ;
 int ucan_ctrl_command_out (struct ucan_priv*,int ,int ,int) ;
 int ucan_prepare_and_anchor_rx_urbs (struct ucan_priv*,struct urb**) ;
 int ucan_release_context_array (struct ucan_priv*) ;
 int ucan_submit_rx_urbs (struct ucan_priv*,struct urb**) ;

__attribute__((used)) static int ucan_open(struct net_device *netdev)
{
 int ret, ret_cleanup;
 u16 ctrlmode;
 struct urb *urbs[UCAN_MAX_RX_URBS];
 struct ucan_priv *up = netdev_priv(netdev);

 ret = ucan_alloc_context_array(up);
 if (ret)
  return ret;




 ret = ucan_prepare_and_anchor_rx_urbs(up, urbs);
 if (ret)
  goto err_contexts;


 ctrlmode = 0;
 if (up->can.ctrlmode & CAN_CTRLMODE_LOOPBACK)
  ctrlmode |= UCAN_MODE_LOOPBACK;
 if (up->can.ctrlmode & CAN_CTRLMODE_LISTENONLY)
  ctrlmode |= UCAN_MODE_SILENT;
 if (up->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES)
  ctrlmode |= UCAN_MODE_3_SAMPLES;
 if (up->can.ctrlmode & CAN_CTRLMODE_ONE_SHOT)
  ctrlmode |= UCAN_MODE_ONE_SHOT;




 ctrlmode |= UCAN_MODE_BERR_REPORT;
 up->ctl_msg_buffer->cmd_start.mode = cpu_to_le16(ctrlmode);


 ret = ucan_ctrl_command_out(up, UCAN_COMMAND_START, 0, 2);
 if (ret < 0) {
  netdev_err(up->netdev,
      "could not start device, code: %d\n",
      ret);
  goto err_reset;
 }


 ret = open_candev(netdev);
 if (ret)
  goto err_stop;


 ret = ucan_submit_rx_urbs(up, urbs);
 if (ret)
  goto err_stop;

 up->can.state = CAN_STATE_ERROR_ACTIVE;


 netif_start_queue(netdev);

 return 0;

err_stop:

 ret_cleanup = ucan_ctrl_command_out(up, UCAN_COMMAND_STOP, 0, 0);
 if (ret_cleanup < 0)
  netdev_err(up->netdev,
      "could not stop device, code: %d\n",
      ret_cleanup);

err_reset:



 ret_cleanup = ucan_ctrl_command_out(up, UCAN_COMMAND_RESET, 0, 0);
 if (ret_cleanup < 0)
  netdev_err(up->netdev,
      "could not reset device, code: %d\n",
      ret_cleanup);


 ucan_cleanup_rx_urbs(up, urbs);

err_contexts:
 ucan_release_context_array(up);
 return ret;
}
