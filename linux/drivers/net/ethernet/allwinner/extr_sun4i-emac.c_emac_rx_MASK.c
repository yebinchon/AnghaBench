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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct sk_buff {void* protocol; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_crc_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct emac_board_info {int emacrx_completed_flag; scalar_t__ membase; int /*<<< orphan*/  dev; struct sk_buff* skb_last; } ;

/* Variables and functions */
 scalar_t__ EMAC_CTL_REG ; 
 unsigned int EMAC_CTL_RX_EN ; 
 scalar_t__ EMAC_INT_CTL_REG ; 
 unsigned int EMAC_RX_CTL_DMA_EN ; 
 scalar_t__ EMAC_RX_CTL_REG ; 
 scalar_t__ EMAC_RX_FBC_REG ; 
 int FUNC0 (int) ; 
 scalar_t__ EMAC_RX_IO_DATA_REG ; 
 int FUNC1 (int) ; 
 int EMAC_RX_IO_DATA_STATUS_CRC_ERR ; 
 int EMAC_RX_IO_DATA_STATUS_LEN_ERR ; 
 int EMAC_RX_IO_DATA_STATUS_OK ; 
 unsigned int EMAC_UNDOCUMENTED_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC5 (struct net_device*,int) ; 
 struct emac_board_info* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct emac_board_info*) ; 
 scalar_t__ FUNC8 (struct emac_board_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 void* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct net_device *dev)
{
	struct emac_board_info *db = FUNC6(dev);
	struct sk_buff *skb;
	u8 *rdptr;
	bool good_packet;
	static int rxlen_last;
	unsigned int reg_val;
	u32 rxhdr, rxstatus, rxcount, rxlen;

	/* Check packet ready or not */
	while (1) {
		/* race warning: the first packet might arrive with
		 * the interrupts disabled, but the second will fix
		 * it
		 */
		rxcount = FUNC10(db->membase + EMAC_RX_FBC_REG);

		if (FUNC8(db))
			FUNC2(db->dev, "RXCount: %x\n", rxcount);

		if ((db->skb_last != NULL) && (rxlen_last > 0)) {
			dev->stats.rx_bytes += rxlen_last;

			/* Pass to upper layer */
			db->skb_last->protocol = FUNC4(db->skb_last,
								dev);
			FUNC9(db->skb_last);
			dev->stats.rx_packets++;
			db->skb_last = NULL;
			rxlen_last = 0;

			reg_val = FUNC10(db->membase + EMAC_RX_CTL_REG);
			reg_val &= ~EMAC_RX_CTL_DMA_EN;
			FUNC14(reg_val, db->membase + EMAC_RX_CTL_REG);
		}

		if (!rxcount) {
			db->emacrx_completed_flag = 1;
			reg_val = FUNC10(db->membase + EMAC_INT_CTL_REG);
			reg_val |= (0xf << 0) | (0x01 << 8);
			FUNC14(reg_val, db->membase + EMAC_INT_CTL_REG);

			/* had one stuck? */
			rxcount = FUNC10(db->membase + EMAC_RX_FBC_REG);
			if (!rxcount)
				return;
		}

		reg_val = FUNC10(db->membase + EMAC_RX_IO_DATA_REG);
		if (FUNC8(db))
			FUNC2(db->dev, "receive header: %x\n", reg_val);
		if (reg_val != EMAC_UNDOCUMENTED_MAGIC) {
			/* disable RX */
			reg_val = FUNC10(db->membase + EMAC_CTL_REG);
			FUNC14(reg_val & ~EMAC_CTL_RX_EN,
			       db->membase + EMAC_CTL_REG);

			/* Flush RX FIFO */
			reg_val = FUNC10(db->membase + EMAC_RX_CTL_REG);
			FUNC14(reg_val | (1 << 3),
			       db->membase + EMAC_RX_CTL_REG);

			do {
				reg_val = FUNC10(db->membase + EMAC_RX_CTL_REG);
			} while (reg_val & (1 << 3));

			/* enable RX */
			reg_val = FUNC10(db->membase + EMAC_CTL_REG);
			FUNC14(reg_val | EMAC_CTL_RX_EN,
			       db->membase + EMAC_CTL_REG);
			reg_val = FUNC10(db->membase + EMAC_INT_CTL_REG);
			reg_val |= (0xf << 0) | (0x01 << 8);
			FUNC14(reg_val, db->membase + EMAC_INT_CTL_REG);

			db->emacrx_completed_flag = 1;

			return;
		}

		/* A packet ready now  & Get status/length */
		good_packet = true;

		rxhdr = FUNC10(db->membase + EMAC_RX_IO_DATA_REG);

		if (FUNC8(db))
			FUNC2(db->dev, "rxhdr: %x\n", *((int *)(&rxhdr)));

		rxlen = FUNC0(rxhdr);
		rxstatus = FUNC1(rxhdr);

		if (FUNC8(db))
			FUNC2(db->dev, "RX: status %02x, length %04x\n",
				rxstatus, rxlen);

		/* Packet Status check */
		if (rxlen < 0x40) {
			good_packet = false;
			if (FUNC7(db))
				FUNC2(db->dev, "RX: Bad Packet (runt)\n");
		}

		if (FUNC13(!(rxstatus & EMAC_RX_IO_DATA_STATUS_OK))) {
			good_packet = false;

			if (rxstatus & EMAC_RX_IO_DATA_STATUS_CRC_ERR) {
				if (FUNC7(db))
					FUNC2(db->dev, "crc error\n");
				dev->stats.rx_crc_errors++;
			}

			if (rxstatus & EMAC_RX_IO_DATA_STATUS_LEN_ERR) {
				if (FUNC7(db))
					FUNC2(db->dev, "length error\n");
				dev->stats.rx_length_errors++;
			}
		}

		/* Move data from EMAC */
		if (good_packet) {
			skb = FUNC5(dev, rxlen + 4);
			if (!skb)
				continue;
			FUNC12(skb, 2);
			rdptr = FUNC11(skb, rxlen - 4);

			/* Read received packet from RX SRAM */
			if (FUNC8(db))
				FUNC2(db->dev, "RxLen %x\n", rxlen);

			FUNC3(db->membase + EMAC_RX_IO_DATA_REG,
					rdptr, rxlen);
			dev->stats.rx_bytes += rxlen;

			/* Pass to upper layer */
			skb->protocol = FUNC4(skb, dev);
			FUNC9(skb);
			dev->stats.rx_packets++;
		}
	}
}