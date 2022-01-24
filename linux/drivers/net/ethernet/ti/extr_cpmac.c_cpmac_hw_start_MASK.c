#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct plat_cpmac_data {int /*<<< orphan*/  reset_bit; } ;
struct net_device {int* dev_addr; } ;
struct cpmac_priv {int /*<<< orphan*/  regs; TYPE_2__* rx_head; TYPE_1__* pdev; } ;
struct TYPE_4__ {int mapping; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPMAC_BUFFER_OFFSET ; 
 int /*<<< orphan*/  CPMAC_MAC_ADDR_HI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CPMAC_MAC_ADDR_MID ; 
 int /*<<< orphan*/  CPMAC_MAC_CONTROL ; 
 int /*<<< orphan*/  CPMAC_MAC_INT_CLEAR ; 
 int /*<<< orphan*/  CPMAC_MAC_INT_ENABLE ; 
 int /*<<< orphan*/  CPMAC_MAX_LENGTH ; 
 int /*<<< orphan*/  CPMAC_MBP ; 
 int /*<<< orphan*/  CPMAC_RX_CONTROL ; 
 int /*<<< orphan*/  CPMAC_RX_INT_CLEAR ; 
 int /*<<< orphan*/  CPMAC_RX_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CPMAC_SKB_SIZE ; 
 int /*<<< orphan*/  CPMAC_TX_CONTROL ; 
 int /*<<< orphan*/  CPMAC_TX_INT_CLEAR ; 
 int /*<<< orphan*/  CPMAC_TX_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  CPMAC_UNICAST_CLEAR ; 
 int /*<<< orphan*/  CPMAC_UNICAST_ENABLE ; 
 int MAC_FDX ; 
 int MAC_MII ; 
 int MBP_RXBCAST ; 
 int MBP_RXMCAST ; 
 int MBP_RXSHORT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct plat_cpmac_data* FUNC6 (int /*<<< orphan*/ *) ; 
 struct cpmac_priv* FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	int i;
	struct cpmac_priv *priv = FUNC7(dev);
	struct plat_cpmac_data *pdata = FUNC6(&priv->pdev->dev);

	FUNC3(pdata->reset_bit);
	for (i = 0; i < 8; i++) {
		FUNC5(priv->regs, FUNC2(i), 0);
		FUNC5(priv->regs, FUNC1(i), 0);
	}
	FUNC5(priv->regs, FUNC1(0), priv->rx_head->mapping);

	FUNC5(priv->regs, CPMAC_MBP, MBP_RXSHORT | MBP_RXBCAST |
		    MBP_RXMCAST);
	FUNC5(priv->regs, CPMAC_BUFFER_OFFSET, 0);
	for (i = 0; i < 8; i++)
		FUNC5(priv->regs, FUNC0(i), dev->dev_addr[5]);
	FUNC5(priv->regs, CPMAC_MAC_ADDR_MID, dev->dev_addr[4]);
	FUNC5(priv->regs, CPMAC_MAC_ADDR_HI, dev->dev_addr[0] |
		    (dev->dev_addr[1] << 8) | (dev->dev_addr[2] << 16) |
		    (dev->dev_addr[3] << 24));
	FUNC5(priv->regs, CPMAC_MAX_LENGTH, CPMAC_SKB_SIZE);
	FUNC5(priv->regs, CPMAC_UNICAST_CLEAR, 0xff);
	FUNC5(priv->regs, CPMAC_RX_INT_CLEAR, 0xff);
	FUNC5(priv->regs, CPMAC_TX_INT_CLEAR, 0xff);
	FUNC5(priv->regs, CPMAC_MAC_INT_CLEAR, 0xff);
	FUNC5(priv->regs, CPMAC_UNICAST_ENABLE, 1);
	FUNC5(priv->regs, CPMAC_RX_INT_ENABLE, 1);
	FUNC5(priv->regs, CPMAC_TX_INT_ENABLE, 0xff);
	FUNC5(priv->regs, CPMAC_MAC_INT_ENABLE, 3);

	FUNC5(priv->regs, CPMAC_RX_CONTROL,
		    FUNC4(priv->regs, CPMAC_RX_CONTROL) | 1);
	FUNC5(priv->regs, CPMAC_TX_CONTROL,
		    FUNC4(priv->regs, CPMAC_TX_CONTROL) | 1);
	FUNC5(priv->regs, CPMAC_MAC_CONTROL,
		    FUNC4(priv->regs, CPMAC_MAC_CONTROL) | MAC_MII |
		    MAC_FDX);
}