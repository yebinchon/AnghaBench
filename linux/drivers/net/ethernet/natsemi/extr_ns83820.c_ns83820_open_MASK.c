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
typedef  scalar_t__ u32 ;
struct ns83820 {int /*<<< orphan*/  tx_watchdog; scalar_t__ base; scalar_t__ tx_phy_descs; scalar_t__ tx_done_idx; scalar_t__ tx_idx; int /*<<< orphan*/ * tx_descs; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned int DESC_LINK ; 
 int DESC_SIZE ; 
 int HZ ; 
 int NR_TX_DESC ; 
 scalar_t__ PQCR ; 
 struct ns83820* FUNC0 (struct net_device*) ; 
 scalar_t__ TXDP ; 
 scalar_t__ TXDP_HI ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  ns83820_tx_watch ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev)
{
	struct ns83820 *dev = FUNC0(ndev);
	unsigned i;
	u32 desc;
	int ret;

	FUNC2("ns83820_open\n");

	FUNC9(0, dev->base + PQCR);

	ret = FUNC6(ndev);
	if (ret)
		goto failed;

	FUNC3(dev->tx_descs, 0, 4 * NR_TX_DESC * DESC_SIZE);
	for (i=0; i<NR_TX_DESC; i++) {
		dev->tx_descs[(i * DESC_SIZE) + DESC_LINK]
				= FUNC1(
				  dev->tx_phy_descs
				  + ((i+1) % NR_TX_DESC) * DESC_SIZE * 4);
	}

	dev->tx_idx = 0;
	dev->tx_done_idx = 0;
	desc = dev->tx_phy_descs;
	FUNC9(0, dev->base + TXDP_HI);
	FUNC9(desc, dev->base + TXDP);

	FUNC8(&dev->tx_watchdog, ns83820_tx_watch, 0);
	FUNC4(&dev->tx_watchdog, jiffies + 2*HZ);

	FUNC5(ndev);	/* FIXME: wait for phy to come up */

	return 0;

failed:
	FUNC7(ndev);
	return ret;
}