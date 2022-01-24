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
typedef  int u16 ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct skge_port {unsigned int port; struct skge_hw* hw; } ;
struct skge_hw {int /*<<< orphan*/  phy_lock; scalar_t__ regs; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 scalar_t__ B2_MAC_1 ; 
 scalar_t__ B2_MAC_2 ; 
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int GM_GPCR_RX_ENA ; 
 int /*<<< orphan*/  GM_GP_CTRL ; 
 int /*<<< orphan*/  GM_SRC_ADDR_1L ; 
 int /*<<< orphan*/  GM_SRC_ADDR_2L ; 
 int /*<<< orphan*/  XM_SA ; 
 int FUNC0 (struct skge_hw*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skge_hw*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skge_hw*,unsigned int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct skge_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct skge_port* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct skge_hw*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev, void *p)
{
	struct skge_port *skge = FUNC7(dev);
	struct skge_hw *hw = skge->hw;
	unsigned port = skge->port;
	const struct sockaddr *addr = p;
	u16 ctrl;

	if (!FUNC4(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC5(dev->dev_addr, addr->sa_data, ETH_ALEN);

	if (!FUNC8(dev)) {
		FUNC6(hw->regs + B2_MAC_1 + port*8, dev->dev_addr, ETH_ALEN);
		FUNC6(hw->regs + B2_MAC_2 + port*8, dev->dev_addr, ETH_ALEN);
	} else {
		/* disable Rx */
		FUNC9(&hw->phy_lock);
		ctrl = FUNC0(hw, port, GM_GP_CTRL);
		FUNC2(hw, port, GM_GP_CTRL, ctrl & ~GM_GPCR_RX_ENA);

		FUNC6(hw->regs + B2_MAC_1 + port*8, dev->dev_addr, ETH_ALEN);
		FUNC6(hw->regs + B2_MAC_2 + port*8, dev->dev_addr, ETH_ALEN);

		if (FUNC3(hw))
			FUNC11(hw, port, XM_SA, dev->dev_addr);
		else {
			FUNC1(hw, port, GM_SRC_ADDR_1L, dev->dev_addr);
			FUNC1(hw, port, GM_SRC_ADDR_2L, dev->dev_addr);
		}

		FUNC2(hw, port, GM_GP_CTRL, ctrl);
		FUNC10(&hw->phy_lock);
	}

	return 0;
}