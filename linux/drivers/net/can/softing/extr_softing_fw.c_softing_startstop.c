
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int restarts; } ;
struct can_bittiming {int brp; int sjw; int phase_seg1; int prop_seg; int phase_seg2; } ;
struct TYPE_13__ {int ctrlmode; TYPE_5__ can_stats; int state; struct can_bittiming bittiming; } ;
struct TYPE_8__ {scalar_t__ echo_get; scalar_t__ echo_put; scalar_t__ pending; } ;
struct softing_priv {int index; int output; TYPE_6__ can; TYPE_1__ tx; struct softing* card; } ;
struct TYPE_14__ {int lock; int up; } ;
struct TYPE_9__ {scalar_t__ pending; } ;
struct softing {struct net_device** net; TYPE_7__ fw; int * dpram; TYPE_4__* pdat; TYPE_3__* pdev; TYPE_2__ tx; } ;
struct net_device {int dummy; } ;
struct can_frame {int can_id; int can_dlc; } ;
typedef int msg ;
struct TYPE_11__ {int generation; } ;
struct TYPE_10__ {int dev; } ;


 int ARRAY_SIZE (struct net_device**) ;
 int CAN_CTRLMODE_3_SAMPLES ;
 int CAN_ERR_DLC ;
 int CAN_ERR_FLAG ;
 int CAN_ERR_RESTARTED ;
 int CAN_STATE_ERROR_ACTIVE ;
 int CAN_STATE_STOPPED ;
 int DPRAM_FCT_PARAM ;
 size_t DPRAM_INFO_BUSSTATE ;
 size_t DPRAM_INFO_BUSSTATE2 ;
 size_t DPRAM_V2_IRQ_TOHOST ;
 int EINVAL ;
 int EIO ;
 int close_candev (struct net_device*) ;
 int dev_alert (int *,char*) ;
 int dev_close (struct net_device*) ;
 int iowrite16 (int,int *) ;
 int iowrite8 (int ,int *) ;
 int memset (struct can_frame*,int ,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct softing_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int softing_enable_irq (struct softing*,int) ;
 scalar_t__ softing_error_reporting (struct net_device*) ;
 int softing_fct_cmd (struct softing*,int,char*) ;
 int softing_initialize_timestamp (struct softing*) ;
 int softing_netdev_rx (struct net_device*,struct can_frame*,int ) ;
 int softing_reset_chip (struct softing*) ;
 int wmb () ;

int softing_startstop(struct net_device *dev, int up)
{
 int ret;
 struct softing *card;
 struct softing_priv *priv;
 struct net_device *netdev;
 int bus_bitmask_start;
 int j, error_reporting;
 struct can_frame msg;
 const struct can_bittiming *bt;

 priv = netdev_priv(dev);
 card = priv->card;

 if (!card->fw.up)
  return -EIO;

 ret = mutex_lock_interruptible(&card->fw.lock);
 if (ret)
  return ret;

 bus_bitmask_start = 0;
 if (dev && up)

  bus_bitmask_start |= (1 << priv->index);

 for (j = 0; j < ARRAY_SIZE(card->net); ++j) {
  netdev = card->net[j];
  if (!netdev)
   continue;
  priv = netdev_priv(netdev);

  if (dev != netdev)
   netif_stop_queue(netdev);

  if (netif_running(netdev)) {
   if (dev != netdev)
    bus_bitmask_start |= (1 << j);
   priv->tx.pending = 0;
   priv->tx.echo_put = 0;
   priv->tx.echo_get = 0;
   close_candev(netdev);
  }
  priv->can.state = CAN_STATE_STOPPED;
 }
 card->tx.pending = 0;

 softing_enable_irq(card, 0);
 ret = softing_reset_chip(card);
 if (ret)
  goto failed;
 if (!bus_bitmask_start)

  goto card_done;

 if ((bus_bitmask_start & 1) && (bus_bitmask_start & 2)
   && (softing_error_reporting(card->net[0])
    != softing_error_reporting(card->net[1]))) {
  dev_alert(&card->pdev->dev,
    "err_reporting flag differs for busses\n");
  goto invalid;
 }
 error_reporting = 0;
 if (bus_bitmask_start & 1) {
  netdev = card->net[0];
  priv = netdev_priv(netdev);
  error_reporting += softing_error_reporting(netdev);

  bt = &priv->can.bittiming;
  iowrite16(bt->brp, &card->dpram[DPRAM_FCT_PARAM + 2]);
  iowrite16(bt->sjw, &card->dpram[DPRAM_FCT_PARAM + 4]);
  iowrite16(bt->phase_seg1 + bt->prop_seg,
    &card->dpram[DPRAM_FCT_PARAM + 6]);
  iowrite16(bt->phase_seg2, &card->dpram[DPRAM_FCT_PARAM + 8]);
  iowrite16((priv->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES) ? 1 : 0,
    &card->dpram[DPRAM_FCT_PARAM + 10]);
  ret = softing_fct_cmd(card, 1, "initialize_chip[0]");
  if (ret < 0)
   goto failed;

  iowrite16(0, &card->dpram[DPRAM_FCT_PARAM + 2]);
  iowrite16(0, &card->dpram[DPRAM_FCT_PARAM + 4]);
  ret = softing_fct_cmd(card, 3, "set_mode[0]");
  if (ret < 0)
   goto failed;


  iowrite16(0x0000, &card->dpram[DPRAM_FCT_PARAM + 2]);
  iowrite16(0x07ff, &card->dpram[DPRAM_FCT_PARAM + 4]);

  iowrite16(0x0000, &card->dpram[DPRAM_FCT_PARAM + 6]);
  iowrite16(0xffff, &card->dpram[DPRAM_FCT_PARAM + 8]);
  iowrite16(0x0000, &card->dpram[DPRAM_FCT_PARAM + 10]);
  iowrite16(0x1fff, &card->dpram[DPRAM_FCT_PARAM + 12]);
  ret = softing_fct_cmd(card, 7, "set_filter[0]");
  if (ret < 0)
   goto failed;

  iowrite16(priv->output, &card->dpram[DPRAM_FCT_PARAM + 2]);
  ret = softing_fct_cmd(card, 5, "set_output[0]");
  if (ret < 0)
   goto failed;
 }
 if (bus_bitmask_start & 2) {
  netdev = card->net[1];
  priv = netdev_priv(netdev);
  error_reporting += softing_error_reporting(netdev);

  bt = &priv->can.bittiming;
  iowrite16(bt->brp, &card->dpram[DPRAM_FCT_PARAM + 2]);
  iowrite16(bt->sjw, &card->dpram[DPRAM_FCT_PARAM + 4]);
  iowrite16(bt->phase_seg1 + bt->prop_seg,
    &card->dpram[DPRAM_FCT_PARAM + 6]);
  iowrite16(bt->phase_seg2, &card->dpram[DPRAM_FCT_PARAM + 8]);
  iowrite16((priv->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES) ? 1 : 0,
    &card->dpram[DPRAM_FCT_PARAM + 10]);
  ret = softing_fct_cmd(card, 2, "initialize_chip[1]");
  if (ret < 0)
   goto failed;

  iowrite16(0, &card->dpram[DPRAM_FCT_PARAM + 2]);
  iowrite16(0, &card->dpram[DPRAM_FCT_PARAM + 4]);
  ret = softing_fct_cmd(card, 4, "set_mode[1]");
  if (ret < 0)
   goto failed;


  iowrite16(0x0000, &card->dpram[DPRAM_FCT_PARAM + 2]);
  iowrite16(0x07ff, &card->dpram[DPRAM_FCT_PARAM + 4]);

  iowrite16(0x0000, &card->dpram[DPRAM_FCT_PARAM + 6]);
  iowrite16(0xffff, &card->dpram[DPRAM_FCT_PARAM + 8]);
  iowrite16(0x0000, &card->dpram[DPRAM_FCT_PARAM + 10]);
  iowrite16(0x1fff, &card->dpram[DPRAM_FCT_PARAM + 12]);
  ret = softing_fct_cmd(card, 8, "set_filter[1]");
  if (ret < 0)
   goto failed;

  iowrite16(priv->output, &card->dpram[DPRAM_FCT_PARAM + 2]);
  ret = softing_fct_cmd(card, 6, "set_output[1]");
  if (ret < 0)
   goto failed;
 }
 iowrite16(1, &card->dpram[DPRAM_FCT_PARAM + 2]);
 iowrite16(1, &card->dpram[DPRAM_FCT_PARAM + 4]);
 iowrite16(1, &card->dpram[DPRAM_FCT_PARAM + 6]);
 iowrite16(1, &card->dpram[DPRAM_FCT_PARAM + 8]);
 iowrite16(1, &card->dpram[DPRAM_FCT_PARAM + 10]);
 iowrite16(1, &card->dpram[DPRAM_FCT_PARAM + 12]);
 iowrite16(1, &card->dpram[DPRAM_FCT_PARAM + 14]);
 iowrite16(1, &card->dpram[DPRAM_FCT_PARAM + 16]);
 iowrite16(1, &card->dpram[DPRAM_FCT_PARAM + 18]);
 iowrite16(1, &card->dpram[DPRAM_FCT_PARAM + 20]);
 ret = softing_fct_cmd(card, 17, "initialize_interface");
 if (ret < 0)
  goto failed;

 ret = softing_fct_cmd(card, 36, "enable_fifo");
 if (ret < 0)
  goto failed;

 ret = softing_fct_cmd(card, 13, "fifo_tx_ack[0]");
 if (ret < 0)
  goto failed;

 ret = softing_fct_cmd(card, 14, "fifo_tx_ack[1]");
 if (ret < 0)
  goto failed;

 ret = softing_fct_cmd(card, 11, "start_chip");
 if (ret < 0)
  goto failed;
 iowrite8(0, &card->dpram[DPRAM_INFO_BUSSTATE]);
 iowrite8(0, &card->dpram[DPRAM_INFO_BUSSTATE2]);
 if (card->pdat->generation < 2) {
  iowrite8(0, &card->dpram[DPRAM_V2_IRQ_TOHOST]);

  wmb();
 }

 softing_initialize_timestamp(card);






 memset(&msg, 0, sizeof(msg));
 msg.can_id = CAN_ERR_FLAG | CAN_ERR_RESTARTED;
 msg.can_dlc = CAN_ERR_DLC;
 for (j = 0; j < ARRAY_SIZE(card->net); ++j) {
  if (!(bus_bitmask_start & (1 << j)))
   continue;
  netdev = card->net[j];
  if (!netdev)
   continue;
  priv = netdev_priv(netdev);
  priv->can.state = CAN_STATE_ERROR_ACTIVE;
  open_candev(netdev);
  if (dev != netdev) {

   softing_netdev_rx(netdev, &msg, 0);
   ++priv->can.can_stats.restarts;
  }
  netif_wake_queue(netdev);
 }


 ret = softing_enable_irq(card, 1);
 if (ret)
  goto failed;
card_done:
 mutex_unlock(&card->fw.lock);
 return 0;
invalid:
 ret = -EINVAL;
failed:
 softing_enable_irq(card, 0);
 softing_reset_chip(card);
 mutex_unlock(&card->fw.lock);

 for (j = 0; j < ARRAY_SIZE(card->net); ++j) {
  netdev = card->net[j];
  if (!netdev)
   continue;
  dev_close(netdev);
 }
 return ret;
}
