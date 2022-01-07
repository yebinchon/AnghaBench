
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mcba_usb_msg_ka_can {scalar_t__ tx_err_cnt; scalar_t__ rx_err_cnt; scalar_t__ tx_bus_off; int soft_ver_minor; int soft_ver_major; } ;
struct TYPE_4__ {int const bitrate; } ;
struct TYPE_6__ {int state; TYPE_1__ bittiming; } ;
struct TYPE_5__ {scalar_t__ txerr; scalar_t__ rxerr; } ;
struct mcba_priv {int can_ka_first_pass; int can_speed_check; TYPE_3__ can; TYPE_2__ bec; int netdev; } ;


 int CAN_STATE_BUS_OFF ;
 int CAN_STATE_ERROR_PASSIVE ;
 int CAN_STATE_ERROR_WARNING ;
 scalar_t__ MCBA_CAN_STATE_ERR_PSV_TH ;
 scalar_t__ MCBA_CAN_STATE_WRN_TH ;
 int convert_can2host_bitrate (struct mcba_usb_msg_ka_can*) ;
 int netdev_err (int ,char*,int const,int const) ;
 int netdev_info (int ,char*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mcba_usb_process_ka_can(struct mcba_priv *priv,
        struct mcba_usb_msg_ka_can *msg)
{
 if (unlikely(priv->can_ka_first_pass)) {
  netdev_info(priv->netdev, "PIC CAN version %hhu.%hhu\n",
       msg->soft_ver_major, msg->soft_ver_minor);

  priv->can_ka_first_pass = 0;
 }

 if (unlikely(priv->can_speed_check)) {
  const u32 bitrate = convert_can2host_bitrate(msg);

  priv->can_speed_check = 0;

  if (bitrate != priv->can.bittiming.bitrate)
   netdev_err(
       priv->netdev,
       "Wrong bitrate reported by the device (%u). Expected %u",
       bitrate, priv->can.bittiming.bitrate);
 }

 priv->bec.txerr = msg->tx_err_cnt;
 priv->bec.rxerr = msg->rx_err_cnt;

 if (msg->tx_bus_off)
  priv->can.state = CAN_STATE_BUS_OFF;

 else if ((priv->bec.txerr > MCBA_CAN_STATE_ERR_PSV_TH) ||
   (priv->bec.rxerr > MCBA_CAN_STATE_ERR_PSV_TH))
  priv->can.state = CAN_STATE_ERROR_PASSIVE;

 else if ((priv->bec.txerr > MCBA_CAN_STATE_WRN_TH) ||
   (priv->bec.rxerr > MCBA_CAN_STATE_WRN_TH))
  priv->can.state = CAN_STATE_ERROR_WARNING;
}
