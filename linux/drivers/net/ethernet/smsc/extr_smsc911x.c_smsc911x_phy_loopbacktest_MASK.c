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
typedef  int ulong ;
typedef  int u32 ;
struct smsc911x_data {char* loopback_tx_pkt; int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  resetcount; scalar_t__ loopback_rx_pkt; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  bus; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct net_device {struct phy_device* phydev; } ;

/* Variables and functions */
 int BMCR_FULLDPLX ; 
 int BMCR_LOOPBACK ; 
 int EIO ; 
 int /*<<< orphan*/  HW_CFG ; 
 unsigned int HW_CFG_SF_ ; 
 unsigned int HW_CFG_TX_FIF_SZ_ ; 
 int /*<<< orphan*/  MAC_CR ; 
 int MAC_CR_FDPX_ ; 
 int MAC_CR_RXEN_ ; 
 int MAC_CR_TXEN_ ; 
 int /*<<< orphan*/  MII_BMCR ; 
 unsigned int MIN_PACKET_SIZE ; 
 int /*<<< orphan*/  RX_CFG ; 
 int /*<<< orphan*/  TX_CFG ; 
 int TX_CFG_TX_ON_ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct smsc911x_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc911x_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct smsc911x_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct smsc911x_data*) ; 
 unsigned int FUNC6 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct smsc911x_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct smsc911x_data *pdata = FUNC1(dev);
	struct phy_device *phy_dev = dev->phydev;
	int result = -EIO;
	unsigned int i, val;
	unsigned long flags;

	/* Initialise tx packet using broadcast destination address */
	FUNC0(pdata->loopback_tx_pkt);

	/* Use incrementing source address */
	for (i = 6; i < 12; i++)
		pdata->loopback_tx_pkt[i] = (char)i;

	/* Set length type field */
	pdata->loopback_tx_pkt[12] = 0x00;
	pdata->loopback_tx_pkt[13] = 0x00;

	for (i = 14; i < MIN_PACKET_SIZE; i++)
		pdata->loopback_tx_pkt[i] = (char)i;

	val = FUNC6(pdata, HW_CFG);
	val &= HW_CFG_TX_FIF_SZ_;
	val |= HW_CFG_SF_;
	FUNC7(pdata, HW_CFG, val);

	FUNC7(pdata, TX_CFG, TX_CFG_TX_ON_);
	FUNC7(pdata, RX_CFG,
		(u32)((ulong)pdata->loopback_rx_pkt & 0x03) << 8);

	for (i = 0; i < 10; i++) {
		/* Set PHY to 10/FD, no ANEG, and loopback mode */
		FUNC3(phy_dev->mdio.bus, phy_dev->mdio.addr,
				   MII_BMCR, BMCR_LOOPBACK | BMCR_FULLDPLX);

		/* Enable MAC tx/rx, FD */
		FUNC8(&pdata->mac_lock, flags);
		FUNC2(pdata, MAC_CR, MAC_CR_FDPX_
				   | MAC_CR_TXEN_ | MAC_CR_RXEN_);
		FUNC9(&pdata->mac_lock, flags);

		if (FUNC4(pdata) == 0) {
			result = 0;
			break;
		}
		pdata->resetcount++;

		/* Disable MAC rx */
		FUNC8(&pdata->mac_lock, flags);
		FUNC2(pdata, MAC_CR, 0);
		FUNC9(&pdata->mac_lock, flags);

		FUNC5(pdata);
	}

	/* Disable MAC */
	FUNC8(&pdata->mac_lock, flags);
	FUNC2(pdata, MAC_CR, 0);
	FUNC9(&pdata->mac_lock, flags);

	/* Cancel PHY loopback mode */
	FUNC3(phy_dev->mdio.bus, phy_dev->mdio.addr, MII_BMCR, 0);

	FUNC7(pdata, TX_CFG, 0);
	FUNC7(pdata, RX_CFG, 0);

	return result;
}