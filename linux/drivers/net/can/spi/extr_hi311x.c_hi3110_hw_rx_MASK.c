#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct spi_device {int dummy; } ;
struct sk_buff {int dummy; } ;
struct hi3110_priv {TYPE_2__* net; } ;
struct can_frame {int can_id; scalar_t__ can_dlc; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int /*<<< orphan*/  CAN_LED_EVENT_RX ; 
 int CAN_RTR_FLAG ; 
 int HI3110_FIFO_WOTIME_DAT_OFF ; 
 size_t HI3110_FIFO_WOTIME_DLC_OFF ; 
 size_t HI3110_FIFO_WOTIME_ID_OFF ; 
 int HI3110_FIFO_WOTIME_ID_RTR ; 
 int HI3110_FIFO_WOTIME_TAG_IDE ; 
 size_t HI3110_FIFO_WOTIME_TAG_OFF ; 
 int /*<<< orphan*/  HI3110_RX_BUF_LEN ; 
 struct sk_buff* FUNC0 (TYPE_2__*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct hi3110_priv* FUNC6 (struct spi_device*) ; 

__attribute__((used)) static void FUNC7(struct spi_device *spi)
{
	struct hi3110_priv *priv = FUNC6(spi);
	struct sk_buff *skb;
	struct can_frame *frame;
	u8 buf[HI3110_RX_BUF_LEN - 1];

	skb = FUNC0(priv->net, &frame);
	if (!skb) {
		priv->net->stats.rx_dropped++;
		return;
	}

	FUNC3(spi, buf);
	if (buf[HI3110_FIFO_WOTIME_TAG_OFF] & HI3110_FIFO_WOTIME_TAG_IDE) {
		/* IDE is recessive (1), indicating extended 29-bit frame */
		frame->can_id = CAN_EFF_FLAG;
		frame->can_id |=
			(buf[HI3110_FIFO_WOTIME_ID_OFF] << 21) |
			(((buf[HI3110_FIFO_WOTIME_ID_OFF + 1] & 0xE0) >> 5) << 18) |
			((buf[HI3110_FIFO_WOTIME_ID_OFF + 1] & 0x07) << 15) |
			(buf[HI3110_FIFO_WOTIME_ID_OFF + 2] << 7) |
			(buf[HI3110_FIFO_WOTIME_ID_OFF + 3] >> 1);
	} else {
		/* IDE is dominant (0), frame indicating standard 11-bit */
		frame->can_id =
			(buf[HI3110_FIFO_WOTIME_ID_OFF] << 3) |
			((buf[HI3110_FIFO_WOTIME_ID_OFF + 1] & 0xE0) >> 5);
	}

	/* Data length */
	frame->can_dlc = FUNC2(buf[HI3110_FIFO_WOTIME_DLC_OFF] & 0x0F);

	if (buf[HI3110_FIFO_WOTIME_ID_OFF + 3] & HI3110_FIFO_WOTIME_ID_RTR)
		frame->can_id |= CAN_RTR_FLAG;
	else
		FUNC4(frame->data, buf + HI3110_FIFO_WOTIME_DAT_OFF,
		       frame->can_dlc);

	priv->net->stats.rx_packets++;
	priv->net->stats.rx_bytes += frame->can_dlc;

	FUNC1(priv->net, CAN_LED_EVENT_RX);

	FUNC5(skb);
}