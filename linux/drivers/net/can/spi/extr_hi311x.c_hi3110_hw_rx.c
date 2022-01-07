
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct spi_device {int dummy; } ;
struct sk_buff {int dummy; } ;
struct hi3110_priv {TYPE_2__* net; } ;
struct can_frame {int can_id; scalar_t__ can_dlc; int data; } ;
struct TYPE_4__ {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int CAN_EFF_FLAG ;
 int CAN_LED_EVENT_RX ;
 int CAN_RTR_FLAG ;
 int HI3110_FIFO_WOTIME_DAT_OFF ;
 size_t HI3110_FIFO_WOTIME_DLC_OFF ;
 size_t HI3110_FIFO_WOTIME_ID_OFF ;
 int HI3110_FIFO_WOTIME_ID_RTR ;
 int HI3110_FIFO_WOTIME_TAG_IDE ;
 size_t HI3110_FIFO_WOTIME_TAG_OFF ;
 int HI3110_RX_BUF_LEN ;
 struct sk_buff* alloc_can_skb (TYPE_2__*,struct can_frame**) ;
 int can_led_event (TYPE_2__*,int ) ;
 scalar_t__ get_can_dlc (int) ;
 int hi3110_hw_rx_frame (struct spi_device*,int*) ;
 int memcpy (int ,int*,scalar_t__) ;
 int netif_rx_ni (struct sk_buff*) ;
 struct hi3110_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static void hi3110_hw_rx(struct spi_device *spi)
{
 struct hi3110_priv *priv = spi_get_drvdata(spi);
 struct sk_buff *skb;
 struct can_frame *frame;
 u8 buf[HI3110_RX_BUF_LEN - 1];

 skb = alloc_can_skb(priv->net, &frame);
 if (!skb) {
  priv->net->stats.rx_dropped++;
  return;
 }

 hi3110_hw_rx_frame(spi, buf);
 if (buf[HI3110_FIFO_WOTIME_TAG_OFF] & HI3110_FIFO_WOTIME_TAG_IDE) {

  frame->can_id = CAN_EFF_FLAG;
  frame->can_id |=
   (buf[HI3110_FIFO_WOTIME_ID_OFF] << 21) |
   (((buf[HI3110_FIFO_WOTIME_ID_OFF + 1] & 0xE0) >> 5) << 18) |
   ((buf[HI3110_FIFO_WOTIME_ID_OFF + 1] & 0x07) << 15) |
   (buf[HI3110_FIFO_WOTIME_ID_OFF + 2] << 7) |
   (buf[HI3110_FIFO_WOTIME_ID_OFF + 3] >> 1);
 } else {

  frame->can_id =
   (buf[HI3110_FIFO_WOTIME_ID_OFF] << 3) |
   ((buf[HI3110_FIFO_WOTIME_ID_OFF + 1] & 0xE0) >> 5);
 }


 frame->can_dlc = get_can_dlc(buf[HI3110_FIFO_WOTIME_DLC_OFF] & 0x0F);

 if (buf[HI3110_FIFO_WOTIME_ID_OFF + 3] & HI3110_FIFO_WOTIME_ID_RTR)
  frame->can_id |= CAN_RTR_FLAG;
 else
  memcpy(frame->data, buf + HI3110_FIFO_WOTIME_DAT_OFF,
         frame->can_dlc);

 priv->net->stats.rx_packets++;
 priv->net->stats.rx_bytes += frame->can_dlc;

 can_led_event(priv->net, CAN_LED_EVENT_RX);

 netif_rx_ni(skb);
}
