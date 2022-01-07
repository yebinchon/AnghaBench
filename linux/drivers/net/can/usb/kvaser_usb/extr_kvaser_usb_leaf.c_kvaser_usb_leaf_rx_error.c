
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct TYPE_11__ {int state; scalar_t__ restart_ms; } ;
struct kvaser_usb_net_priv {TYPE_7__* netdev; TYPE_2__ can; } ;
struct TYPE_15__ {int error_state; } ;
struct TYPE_14__ {int error_factor; } ;
struct kvaser_usb_err_summary {size_t channel; int status; int rxerr; int txerr; TYPE_6__ usbcan; TYPE_5__ leaf; } ;
struct TYPE_12__ {int family; } ;
struct TYPE_13__ {TYPE_3__ leaf; } ;
struct kvaser_usb {size_t nchannels; TYPE_4__ card_data; struct kvaser_usb_net_priv** nets; TYPE_1__* intf; } ;
struct can_frame {int can_id; scalar_t__ can_dlc; int * data; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;
struct TYPE_16__ {struct net_device_stats stats; } ;
struct TYPE_10__ {int dev; } ;


 int CAN_ERR_BUSERROR ;
 scalar_t__ CAN_ERR_DLC ;
 int CAN_ERR_FLAG ;
 int CAN_ERR_PROT ;
 int CAN_ERR_PROT_BIT0 ;
 int CAN_ERR_PROT_BIT1 ;
 int CAN_ERR_PROT_FORM ;
 int CAN_ERR_PROT_LOC_ACK ;
 int CAN_ERR_PROT_LOC_CRC_SEQ ;
 int CAN_ERR_PROT_STUFF ;
 int CAN_ERR_PROT_TX ;
 int CAN_ERR_RESTARTED ;
 int CAN_STATE_BUS_OFF ;
 int CMD_STOP_CHIP ;


 int M16C_EF_ACKE ;
 int M16C_EF_BITE0 ;
 int M16C_EF_BITE1 ;
 int M16C_EF_CRCE ;
 int M16C_EF_FORME ;
 int M16C_EF_STFE ;
 int M16C_EF_TRE ;
 int M16C_STATE_BUS_OFF ;
 int M16C_STATE_BUS_RESET ;
 int USBCAN_ERROR_STATE_BUSERROR ;
 struct sk_buff* alloc_can_err_skb (TYPE_7__*,struct can_frame**) ;
 int dev_err (int *,char*,size_t) ;
 int kvaser_usb_leaf_rx_error_update_can_state (struct kvaser_usb_net_priv*,struct kvaser_usb_err_summary const*,struct can_frame*) ;
 int kvaser_usb_leaf_simple_cmd_async (struct kvaser_usb_net_priv*,int ) ;
 int memcpy (struct can_frame*,struct can_frame*,int) ;
 int netif_carrier_off (TYPE_7__*) ;
 int netif_carrier_on (TYPE_7__*) ;
 int netif_rx (struct sk_buff*) ;

__attribute__((used)) static void kvaser_usb_leaf_rx_error(const struct kvaser_usb *dev,
         const struct kvaser_usb_err_summary *es)
{
 struct can_frame *cf;
 struct can_frame tmp_cf = { .can_id = CAN_ERR_FLAG,
        .can_dlc = CAN_ERR_DLC };
 struct sk_buff *skb;
 struct net_device_stats *stats;
 struct kvaser_usb_net_priv *priv;
 enum can_state old_state, new_state;

 if (es->channel >= dev->nchannels) {
  dev_err(&dev->intf->dev,
   "Invalid channel number (%d)\n", es->channel);
  return;
 }

 priv = dev->nets[es->channel];
 stats = &priv->netdev->stats;
 old_state = priv->can.state;
 kvaser_usb_leaf_rx_error_update_can_state(priv, es, &tmp_cf);
 new_state = priv->can.state;

 skb = alloc_can_err_skb(priv->netdev, &cf);
 if (!skb) {
  stats->rx_dropped++;
  return;
 }
 memcpy(cf, &tmp_cf, sizeof(*cf));

 if (new_state != old_state) {
  if (es->status &
      (M16C_STATE_BUS_OFF | M16C_STATE_BUS_RESET)) {
   if (!priv->can.restart_ms)
    kvaser_usb_leaf_simple_cmd_async(priv,
         CMD_STOP_CHIP);
   netif_carrier_off(priv->netdev);
  }

  if (priv->can.restart_ms &&
      old_state >= CAN_STATE_BUS_OFF &&
      new_state < CAN_STATE_BUS_OFF) {
   cf->can_id |= CAN_ERR_RESTARTED;
   netif_carrier_on(priv->netdev);
  }
 }

 switch (dev->card_data.leaf.family) {
 case 129:
  if (es->leaf.error_factor) {
   cf->can_id |= CAN_ERR_BUSERROR | CAN_ERR_PROT;

   if (es->leaf.error_factor & M16C_EF_ACKE)
    cf->data[3] = CAN_ERR_PROT_LOC_ACK;
   if (es->leaf.error_factor & M16C_EF_CRCE)
    cf->data[3] = CAN_ERR_PROT_LOC_CRC_SEQ;
   if (es->leaf.error_factor & M16C_EF_FORME)
    cf->data[2] |= CAN_ERR_PROT_FORM;
   if (es->leaf.error_factor & M16C_EF_STFE)
    cf->data[2] |= CAN_ERR_PROT_STUFF;
   if (es->leaf.error_factor & M16C_EF_BITE0)
    cf->data[2] |= CAN_ERR_PROT_BIT0;
   if (es->leaf.error_factor & M16C_EF_BITE1)
    cf->data[2] |= CAN_ERR_PROT_BIT1;
   if (es->leaf.error_factor & M16C_EF_TRE)
    cf->data[2] |= CAN_ERR_PROT_TX;
  }
  break;
 case 128:
  if (es->usbcan.error_state & USBCAN_ERROR_STATE_BUSERROR)
   cf->can_id |= CAN_ERR_BUSERROR;
  break;
 }

 cf->data[6] = es->txerr;
 cf->data[7] = es->rxerr;

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;
 netif_rx(skb);
}
