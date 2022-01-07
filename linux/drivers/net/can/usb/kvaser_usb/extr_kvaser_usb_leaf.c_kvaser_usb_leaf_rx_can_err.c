
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device_stats {int rx_errors; } ;
struct kvaser_usb_net_priv {TYPE_3__* netdev; } ;
struct TYPE_6__ {int flag; } ;
struct TYPE_5__ {TYPE_2__ rx_can_header; } ;
struct kvaser_cmd {TYPE_1__ u; } ;
struct TYPE_7__ {struct net_device_stats stats; } ;


 int MSG_FLAG_ERROR_FRAME ;
 int MSG_FLAG_NERR ;
 int MSG_FLAG_OVERRUN ;
 int kvaser_usb_can_rx_over_error (TYPE_3__*) ;
 int netdev_err (TYPE_3__*,char*,int) ;

__attribute__((used)) static void kvaser_usb_leaf_rx_can_err(const struct kvaser_usb_net_priv *priv,
           const struct kvaser_cmd *cmd)
{
 if (cmd->u.rx_can_header.flag & (MSG_FLAG_ERROR_FRAME |
      MSG_FLAG_NERR)) {
  struct net_device_stats *stats = &priv->netdev->stats;

  netdev_err(priv->netdev, "Unknown error (flags: 0x%02x)\n",
      cmd->u.rx_can_header.flag);

  stats->rx_errors++;
  return;
 }

 if (cmd->u.rx_can_header.flag & MSG_FLAG_OVERRUN)
  kvaser_usb_can_rx_over_error(priv->netdev);
}
