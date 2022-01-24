#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct cc770_priv {int dummy; } ;
struct can_frame {int can_id; int can_dlc; int* data; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; int /*<<< orphan*/ * id; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int CAN_RTR_FLAG ; 
 int MSGCFG_XTD ; 
 int RMTPND_SET ; 
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int FUNC1 (struct cc770_priv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 TYPE_1__* msgobj ; 
 struct cc770_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, unsigned int mo, u8 ctrl1)
{
	struct cc770_priv *priv = FUNC3(dev);
	struct net_device_stats *stats = &dev->stats;
	struct can_frame *cf;
	struct sk_buff *skb;
	u8 config;
	u32 id;
	int i;

	skb = FUNC0(dev, &cf);
	if (!skb)
		return;

	config = FUNC1(priv, msgobj[mo].config);

	if (ctrl1 & RMTPND_SET) {
		/*
		 * Unfortunately, the chip does not store the real message
		 * identifier of the received remote transmission request
		 * frame. Therefore we set it to 0.
		 */
		cf->can_id = CAN_RTR_FLAG;
		if (config & MSGCFG_XTD)
			cf->can_id |= CAN_EFF_FLAG;
		cf->can_dlc = 0;
	} else {
		if (config & MSGCFG_XTD) {
			id = FUNC1(priv, msgobj[mo].id[3]);
			id |= FUNC1(priv, msgobj[mo].id[2]) << 8;
			id |= FUNC1(priv, msgobj[mo].id[1]) << 16;
			id |= FUNC1(priv, msgobj[mo].id[0]) << 24;
			id >>= 3;
			id |= CAN_EFF_FLAG;
		} else {
			id = FUNC1(priv, msgobj[mo].id[1]);
			id |= FUNC1(priv, msgobj[mo].id[0]) << 8;
			id >>= 5;
		}

		cf->can_id = id;
		cf->can_dlc = FUNC2((config & 0xf0) >> 4);
		for (i = 0; i < cf->can_dlc; i++)
			cf->data[i] = FUNC1(priv, msgobj[mo].data[i]);
	}

	stats->rx_packets++;
	stats->rx_bytes += cf->can_dlc;
	FUNC4(skb);
}