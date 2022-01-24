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
struct platform_device {int dummy; } ;
struct mtk_mac {int /*<<< orphan*/  phylink; } ;
struct mtk_eth {int /*<<< orphan*/  rx_napi; int /*<<< orphan*/  tx_napi; int /*<<< orphan*/ * netdev; } ;

/* Variables and functions */
 int MTK_MAC_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_eth*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_eth*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_eth*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mtk_mac* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct mtk_eth* FUNC7 (struct platform_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mtk_eth *eth = FUNC7(pdev);
	struct mtk_mac *mac;
	int i;

	/* stop all devices to make sure that dma is properly shut down */
	for (i = 0; i < MTK_MAC_COUNT; i++) {
		if (!eth->netdev[i])
			continue;
		FUNC3(eth->netdev[i]);
		mac = FUNC4(eth->netdev[i]);
		FUNC6(mac->phylink);
	}

	FUNC1(eth);

	FUNC5(&eth->tx_napi);
	FUNC5(&eth->rx_napi);
	FUNC0(eth);
	FUNC2(eth);

	return 0;
}