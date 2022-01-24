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
struct cas {int cas_flags; int crc_size; scalar_t__ regs; int /*<<< orphan*/  dev; int /*<<< orphan*/  rx_pause_on; int /*<<< orphan*/  rx_pause_off; int /*<<< orphan*/  rx_fifo_size; int /*<<< orphan*/  min_frame_size; int /*<<< orphan*/  phy_type; } ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_FULLDPLX ; 
 int BMCR_SPEED100 ; 
 int /*<<< orphan*/  CAS_1000MB_MIN_FRAME ; 
 int CAS_BMCR_SPEED1000 ; 
 int CAS_FLAG_1000MB_CAP ; 
 int /*<<< orphan*/  CAS_MIN_FRAME ; 
 int /*<<< orphan*/  CAS_MIN_MTU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAC_CTRL_CFG_RECV_PAUSE_EN ; 
 int MAC_CTRL_CFG_SEND_PAUSE_EN ; 
 int MAC_RX_CFG_CARRIER_EXTEND ; 
 int MAC_RX_CFG_STRIP_FCS ; 
 int MAC_TX_CFG_CARRIER_EXTEND ; 
 int MAC_TX_CFG_IGNORE_CARRIER ; 
 int MAC_TX_CFG_IGNORE_COLL ; 
 int MAC_TX_CFG_IPG_EN ; 
 int MAC_TX_CFG_NEVER_GIVE_UP_EN ; 
 int MAC_TX_CFG_NEVER_GIVE_UP_LIM ; 
 int MAC_XIF_DISABLE_ECHO ; 
 int MAC_XIF_FDPLX_LED ; 
 int MAC_XIF_GMII_MODE ; 
 int MAC_XIF_LINK_LED ; 
 int MAC_XIF_MII_BUFFER_OUTPUT_EN ; 
 int MAC_XIF_TX_MII_OUTPUT_EN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int PCS_MII_AUTONEG_EN ; 
 int PCS_MII_CTRL_DUPLEX ; 
 scalar_t__ REG_MAC_CTRL_CFG ; 
 scalar_t__ REG_MAC_RX_CFG ; 
 scalar_t__ REG_MAC_SLOT_TIME ; 
 scalar_t__ REG_MAC_TX_CFG ; 
 scalar_t__ REG_MAC_XIF_CFG ; 
 scalar_t__ REG_PCS_MII_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct cas*,int) ; 
 int FUNC2 (struct cas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cas*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct cas*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct cas*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct cas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*) ; 
 scalar_t__ FUNC8 (struct cas*) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct cas *cp)
{
	u32 val;
	int full_duplex, speed, pause;

	full_duplex = 0;
	speed = 10;
	pause = 0;

	if (FUNC0(cp->phy_type)) {
		FUNC1(cp, 0);
		val = FUNC2(cp, MII_BMCR);
		if (val & BMCR_ANENABLE) {
			FUNC3(cp, &full_duplex, &speed,
					       &pause);
		} else {
			if (val & BMCR_FULLDPLX)
				full_duplex = 1;

			if (val & BMCR_SPEED100)
				speed = 100;
			else if (val & CAS_BMCR_SPEED1000)
				speed = (cp->cas_flags & CAS_FLAG_1000MB_CAP) ?
					1000 : 100;
		}
		FUNC1(cp, 1);

	} else {
		val = FUNC9(cp->regs + REG_PCS_MII_CTRL);
		FUNC4(cp, &full_duplex, &speed, &pause);
		if ((val & PCS_MII_AUTONEG_EN) == 0) {
			if (val & PCS_MII_CTRL_DUPLEX)
				full_duplex = 1;
		}
	}

	FUNC7(cp, link, cp->dev, "Link up at %d Mbps, %s-duplex\n",
		   speed, full_duplex ? "full" : "half");

	val = MAC_XIF_TX_MII_OUTPUT_EN | MAC_XIF_LINK_LED;
	if (FUNC0(cp->phy_type)) {
		val |= MAC_XIF_MII_BUFFER_OUTPUT_EN;
		if (!full_duplex)
			val |= MAC_XIF_DISABLE_ECHO;
	}
	if (full_duplex)
		val |= MAC_XIF_FDPLX_LED;
	if (speed == 1000)
		val |= MAC_XIF_GMII_MODE;
	FUNC10(val, cp->regs + REG_MAC_XIF_CFG);

	/* deal with carrier and collision detect. */
	val = MAC_TX_CFG_IPG_EN;
	if (full_duplex) {
		val |= MAC_TX_CFG_IGNORE_CARRIER;
		val |= MAC_TX_CFG_IGNORE_COLL;
	} else {
#ifndef USE_CSMA_CD_PROTO
		val |= MAC_TX_CFG_NEVER_GIVE_UP_EN;
		val |= MAC_TX_CFG_NEVER_GIVE_UP_LIM;
#endif
	}
	/* val now set up for REG_MAC_TX_CFG */

	/* If gigabit and half-duplex, enable carrier extension
	 * mode.  increase slot time to 512 bytes as well.
	 * else, disable it and make sure slot time is 64 bytes.
	 * also activate checksum bug workaround
	 */
	if ((speed == 1000) && !full_duplex) {
		FUNC10(val | MAC_TX_CFG_CARRIER_EXTEND,
		       cp->regs + REG_MAC_TX_CFG);

		val = FUNC9(cp->regs + REG_MAC_RX_CFG);
		val &= ~MAC_RX_CFG_STRIP_FCS; /* checksum workaround */
		FUNC10(val | MAC_RX_CFG_CARRIER_EXTEND,
		       cp->regs + REG_MAC_RX_CFG);

		FUNC10(0x200, cp->regs + REG_MAC_SLOT_TIME);

		cp->crc_size = 4;
		/* minimum size gigabit frame at half duplex */
		cp->min_frame_size = CAS_1000MB_MIN_FRAME;

	} else {
		FUNC10(val, cp->regs + REG_MAC_TX_CFG);

		/* checksum bug workaround. don't strip FCS when in
		 * half-duplex mode
		 */
		val = FUNC9(cp->regs + REG_MAC_RX_CFG);
		if (full_duplex) {
			val |= MAC_RX_CFG_STRIP_FCS;
			cp->crc_size = 0;
			cp->min_frame_size = CAS_MIN_MTU;
		} else {
			val &= ~MAC_RX_CFG_STRIP_FCS;
			cp->crc_size = 4;
			cp->min_frame_size = CAS_MIN_FRAME;
		}
		FUNC10(val & ~MAC_RX_CFG_CARRIER_EXTEND,
		       cp->regs + REG_MAC_RX_CFG);
		FUNC10(0x40, cp->regs + REG_MAC_SLOT_TIME);
	}

	if (FUNC8(cp)) {
		if (pause & 0x01) {
			FUNC6(cp->dev, "Pause is enabled (rxfifo: %d off: %d on: %d)\n",
				    cp->rx_fifo_size,
				    cp->rx_pause_off,
				    cp->rx_pause_on);
		} else if (pause & 0x10) {
			FUNC6(cp->dev, "TX pause enabled\n");
		} else {
			FUNC6(cp->dev, "Pause is disabled\n");
		}
	}

	val = FUNC9(cp->regs + REG_MAC_CTRL_CFG);
	val &= ~(MAC_CTRL_CFG_SEND_PAUSE_EN | MAC_CTRL_CFG_RECV_PAUSE_EN);
	if (pause) { /* symmetric or asymmetric pause */
		val |= MAC_CTRL_CFG_SEND_PAUSE_EN;
		if (pause & 0x01) { /* symmetric pause */
			val |= MAC_CTRL_CFG_RECV_PAUSE_EN;
		}
	}
	FUNC10(val, cp->regs + REG_MAC_CTRL_CFG);
	FUNC5(cp);
}