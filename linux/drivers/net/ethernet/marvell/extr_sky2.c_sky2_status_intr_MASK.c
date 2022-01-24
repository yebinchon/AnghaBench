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
typedef  int u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct sky2_status_le {int opcode; unsigned int css; int /*<<< orphan*/  status; int /*<<< orphan*/  length; } ;
struct sky2_port {int dummy; } ;
struct sky2_hw {scalar_t__ st_idx; int flags; struct net_device** dev; int /*<<< orphan*/  st_size; struct sky2_status_le* st_le; } ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  ip_summed; } ;
struct net_device {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int CSS_ISIPV4 ; 
 int CSS_ISIPV6 ; 
 unsigned int CSS_LINK_BIT ; 
 int CSS_TCPUDPCSOK ; 
 int HW_OWNER ; 
 int NETIF_F_RXCSUM ; 
#define  OP_RSS_HASH 133 
#define  OP_RXCHKS 132 
#define  OP_RXCHKSVLAN 131 
#define  OP_RXSTAT 130 
#define  OP_RXVLAN 129 
#define  OP_TXINDEXLE 128 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_STAT_CLR_IRQ ; 
 int SKY2_HW_NEW_LE ; 
 int /*<<< orphan*/  STAT_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct sky2_port* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct sk_buff* FUNC9 (struct net_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sky2_port*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sky2_hw*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct sky2_port*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sky2_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct sky2_port*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct sky2_hw *hw, int to_do, u16 idx)
{
	int work_done = 0;
	unsigned int total_bytes[2] = { 0 };
	unsigned int total_packets[2] = { 0 };

	if (to_do <= 0)
		return work_done;

	FUNC8();
	do {
		struct sky2_port *sky2;
		struct sky2_status_le *le  = hw->st_le + hw->st_idx;
		unsigned port;
		struct net_device *dev;
		struct sk_buff *skb;
		u32 status;
		u16 length;
		u8 opcode = le->opcode;

		if (!(opcode & HW_OWNER))
			break;

		hw->st_idx = FUNC0(hw->st_idx, hw->st_size);

		port = le->css & CSS_LINK_BIT;
		dev = hw->dev[port];
		sky2 = FUNC6(dev);
		length = FUNC2(le->length);
		status = FUNC3(le->status);

		le->opcode = 0;
		switch (opcode & ~HW_OWNER) {
		case OP_RXSTAT:
			total_packets[port]++;
			total_bytes[port] += length;

			skb = FUNC9(dev, length, status);
			if (!skb)
				break;

			/* This chip reports checksum status differently */
			if (hw->flags & SKY2_HW_NEW_LE) {
				if ((dev->features & NETIF_F_RXCSUM) &&
				    (le->css & (CSS_ISIPV4 | CSS_ISIPV6)) &&
				    (le->css & CSS_TCPUDPCSOK))
					skb->ip_summed = CHECKSUM_UNNECESSARY;
				else
					skb->ip_summed = CHECKSUM_NONE;
			}

			skb->protocol = FUNC1(skb, dev);
			FUNC14(sky2, skb);

			/* Stop after net poll weight */
			if (++work_done >= to_do)
				goto exit_loop;
			break;

		case OP_RXVLAN:
			FUNC13(sky2, length);
			break;

		case OP_RXCHKSVLAN:
			FUNC13(sky2, length);
			/* fall through */
		case OP_RXCHKS:
			if (FUNC4(dev->features & NETIF_F_RXCSUM))
				FUNC10(sky2, status);
			break;

		case OP_RSS_HASH:
			FUNC12(sky2, status);
			break;

		case OP_TXINDEXLE:
			/* TX index reports status for both ports */
			FUNC15(hw->dev[0], status & 0xfff);
			if (hw->dev[1])
				FUNC15(hw->dev[1],
				     ((status >> 24) & 0xff)
					     | (u16)(length & 0xf) << 8);
			break;

		default:
			if (FUNC5())
				FUNC7("unknown status opcode 0x%x\n", opcode);
		}
	} while (hw->st_idx != idx);

	/* Fully processed status ring so clear irq */
	FUNC16(hw, STAT_CTRL, SC_STAT_CLR_IRQ);

exit_loop:
	FUNC11(hw, 0, total_packets[0], total_bytes[0]);
	FUNC11(hw, 1, total_packets[1], total_bytes[1]);

	return work_done;
}