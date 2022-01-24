#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct m_can_classdev {int dummy; } ;
struct canfd_frame {int len; int can_id; scalar_t__ data; int /*<<< orphan*/  flags; } ;
struct can_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CANFD_BRS ; 
 int /*<<< orphan*/  CANFD_ESI ; 
 int CAN_EFF_FLAG ; 
 int CAN_EFF_MASK ; 
 int CAN_RTR_FLAG ; 
 int CAN_SFF_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_CAN_FIFO_DLC ; 
 int /*<<< orphan*/  M_CAN_FIFO_ID ; 
 int /*<<< orphan*/  M_CAN_RXF0A ; 
 int RXFS_FGI_MASK ; 
 int RXFS_FGI_SHIFT ; 
 int RX_BUF_BRS ; 
 int RX_BUF_ESI ; 
 int RX_BUF_FDF ; 
 int RX_BUF_RTR ; 
 int RX_BUF_XTD ; 
 struct sk_buff* FUNC1 (struct net_device*,struct can_frame**) ; 
 struct sk_buff* FUNC2 (struct net_device*,struct canfd_frame**) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct m_can_classdev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct m_can_classdev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 struct m_can_classdev* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev, u32 rxfs)
{
	struct net_device_stats *stats = &dev->stats;
	struct m_can_classdev *cdev = FUNC8(dev);
	struct canfd_frame *cf;
	struct sk_buff *skb;
	u32 id, fgi, dlc;
	int i;

	/* calculate the fifo get index for where to read data */
	fgi = (rxfs & RXFS_FGI_MASK) >> RXFS_FGI_SHIFT;
	dlc = FUNC5(cdev, fgi, M_CAN_FIFO_DLC);
	if (dlc & RX_BUF_FDF)
		skb = FUNC2(dev, &cf);
	else
		skb = FUNC1(dev, (struct can_frame **)&cf);
	if (!skb) {
		stats->rx_dropped++;
		return;
	}

	if (dlc & RX_BUF_FDF)
		cf->len = FUNC3((dlc >> 16) & 0x0F);
	else
		cf->len = FUNC4((dlc >> 16) & 0x0F);

	id = FUNC5(cdev, fgi, M_CAN_FIFO_ID);
	if (id & RX_BUF_XTD)
		cf->can_id = (id & CAN_EFF_MASK) | CAN_EFF_FLAG;
	else
		cf->can_id = (id >> 18) & CAN_SFF_MASK;

	if (id & RX_BUF_ESI) {
		cf->flags |= CANFD_ESI;
		FUNC7(dev, "ESI Error\n");
	}

	if (!(dlc & RX_BUF_FDF) && (id & RX_BUF_RTR)) {
		cf->can_id |= CAN_RTR_FLAG;
	} else {
		if (dlc & RX_BUF_BRS)
			cf->flags |= CANFD_BRS;

		for (i = 0; i < cf->len; i += 4)
			*(u32 *)(cf->data + i) =
				FUNC5(cdev, fgi,
						FUNC0(i / 4));
	}

	/* acknowledge rx fifo 0 */
	FUNC6(cdev, M_CAN_RXF0A, fgi);

	stats->rx_packets++;
	stats->rx_bytes += cf->len;

	FUNC9(skb);
}