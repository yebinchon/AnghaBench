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
struct xcan_priv {int (* read_reg ) (struct xcan_priv*,int) ;} ;
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct canfd_frame {int len; int can_id; int data; } ;
struct can_frame {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int CAN_RTR_FLAG ; 
 int XCANFD_DW_BYTES ; 
 int FUNC0 (int) ; 
 int XCAN_DLCR_DLC_MASK ; 
 int XCAN_DLCR_DLC_SHIFT ; 
 int XCAN_DLCR_EDL_MASK ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int XCAN_IDR_ID1_MASK ; 
 int XCAN_IDR_ID1_SHIFT ; 
 int XCAN_IDR_ID2_MASK ; 
 int XCAN_IDR_ID2_SHIFT ; 
 int XCAN_IDR_IDE_MASK ; 
 int XCAN_IDR_RTR_MASK ; 
 int XCAN_IDR_SRR_MASK ; 
 struct sk_buff* FUNC3 (struct net_device*,struct can_frame**) ; 
 struct sk_buff* FUNC4 (struct net_device*,struct canfd_frame**) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 struct xcan_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct xcan_priv*,int) ; 
 int FUNC11 (struct xcan_priv*,int) ; 
 int FUNC12 (struct xcan_priv*,int) ; 
 int FUNC13 (struct xcan_priv*,int) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct net_device *ndev, int frame_base)
{
	struct xcan_priv *priv = FUNC8(ndev);
	struct net_device_stats *stats = &ndev->stats;
	struct canfd_frame *cf;
	struct sk_buff *skb;
	u32 id_xcan, dlc, data[2] = {0, 0}, dwindex = 0, i, dw_offset;

	id_xcan = priv->read_reg(priv, FUNC2(frame_base));
	dlc = priv->read_reg(priv, FUNC1(frame_base));
	if (dlc & XCAN_DLCR_EDL_MASK)
		skb = FUNC4(ndev, &cf);
	else
		skb = FUNC3(ndev, (struct can_frame **)&cf);

	if (FUNC14(!skb)) {
		stats->rx_dropped++;
		return 0;
	}

	/* Change Xilinx CANFD data length format to socketCAN data
	 * format
	 */
	if (dlc & XCAN_DLCR_EDL_MASK)
		cf->len = FUNC5((dlc & XCAN_DLCR_DLC_MASK) >>
				  XCAN_DLCR_DLC_SHIFT);
	else
		cf->len = FUNC7((dlc & XCAN_DLCR_DLC_MASK) >>
					  XCAN_DLCR_DLC_SHIFT);

	/* Change Xilinx CAN ID format to socketCAN ID format */
	if (id_xcan & XCAN_IDR_IDE_MASK) {
		/* The received frame is an Extended format frame */
		cf->can_id = (id_xcan & XCAN_IDR_ID1_MASK) >> 3;
		cf->can_id |= (id_xcan & XCAN_IDR_ID2_MASK) >>
				XCAN_IDR_ID2_SHIFT;
		cf->can_id |= CAN_EFF_FLAG;
		if (id_xcan & XCAN_IDR_RTR_MASK)
			cf->can_id |= CAN_RTR_FLAG;
	} else {
		/* The received frame is a standard format frame */
		cf->can_id = (id_xcan & XCAN_IDR_ID1_MASK) >>
				XCAN_IDR_ID1_SHIFT;
		if (!(dlc & XCAN_DLCR_EDL_MASK) && (id_xcan &
					XCAN_IDR_SRR_MASK))
			cf->can_id |= CAN_RTR_FLAG;
	}

	/* Check the frame received is FD or not*/
	if (dlc & XCAN_DLCR_EDL_MASK) {
		for (i = 0; i < cf->len; i += 4) {
			dw_offset = FUNC0(frame_base) +
					(dwindex * XCANFD_DW_BYTES);
			data[0] = priv->read_reg(priv, dw_offset);
			*(__be32 *)(cf->data + i) = FUNC6(data[0]);
			dwindex++;
		}
	} else {
		for (i = 0; i < cf->len; i += 4) {
			dw_offset = FUNC0(frame_base);
			data[0] = priv->read_reg(priv, dw_offset + i);
			*(__be32 *)(cf->data + i) = FUNC6(data[0]);
		}
	}
	stats->rx_bytes += cf->len;
	stats->rx_packets++;
	FUNC9(skb);

	return 1;
}