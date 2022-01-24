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
typedef  unsigned int u32 ;
struct net_device {unsigned int mtu; int /*<<< orphan*/  dev_addr; } ;
struct emac_adapter {unsigned int rxbuf_size; scalar_t__ base; struct net_device* netdev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 unsigned int DATA_BYTE_SWAP ; 
 scalar_t__ EMAC_AXI_MAST_CTRL ; 
 scalar_t__ EMAC_CLK_GATE_CTRL ; 
 unsigned int EMAC_DEF_RX_BUF_SIZE ; 
 scalar_t__ EMAC_MAX_FRAM_LEN_CTRL ; 
 scalar_t__ EMAC_MISC_CTRL ; 
 unsigned int ETH_FCS_LEN ; 
 unsigned int ETH_HLEN ; 
 unsigned int MAX_BOUND ; 
 unsigned int MAX_BTYPE ; 
 unsigned int RX_UNCPL_INT_EN ; 
 unsigned int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC1 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct emac_adapter*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct emac_adapter *adpt)
{
	struct net_device *netdev = adpt->netdev;
	unsigned int max_frame;
	u32 val;

	FUNC5(adpt, netdev->dev_addr);

	max_frame = netdev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
	adpt->rxbuf_size = netdev->mtu > EMAC_DEF_RX_BUF_SIZE ?
		FUNC0(max_frame, 8) : EMAC_DEF_RX_BUF_SIZE;

	FUNC2(adpt);

	FUNC7(netdev->mtu + ETH_HLEN + VLAN_HLEN + ETH_FCS_LEN,
	       adpt->base + EMAC_MAX_FRAM_LEN_CTRL);

	FUNC4(adpt);
	FUNC3(adpt);
	FUNC1(adpt);

	val = FUNC6(adpt->base + EMAC_AXI_MAST_CTRL);
	val &= ~(DATA_BYTE_SWAP | MAX_BOUND);
	val |= MAX_BTYPE;
	FUNC7(val, adpt->base + EMAC_AXI_MAST_CTRL);
	FUNC7(0, adpt->base + EMAC_CLK_GATE_CTRL);
	FUNC7(RX_UNCPL_INT_EN, adpt->base + EMAC_MISC_CTRL);
}