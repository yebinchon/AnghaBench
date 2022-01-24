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
struct net_device {char* dev_addr; } ;
struct mtk_mac {struct mtk_eth* hw; int /*<<< orphan*/  id; } ;
struct mtk_eth {int /*<<< orphan*/  page_lock; TYPE_1__* soc; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MT7628_SDM_MAC_ADRH ; 
 int /*<<< orphan*/  MT7628_SDM_MAC_ADRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTK_RESETTING ; 
 int /*<<< orphan*/  MTK_SOC_MT7628 ; 
 int FUNC3 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_eth*,char const,int /*<<< orphan*/ ) ; 
 struct mtk_mac* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, void *p)
{
	int ret = FUNC3(dev, p);
	struct mtk_mac *mac = FUNC5(dev);
	struct mtk_eth *eth = mac->hw;
	const char *macaddr = dev->dev_addr;

	if (ret)
		return ret;

	if (FUNC9(FUNC8(MTK_RESETTING, &mac->hw->state)))
		return -EBUSY;

	FUNC6(&mac->hw->page_lock);
	if (FUNC2(eth->soc->caps, MTK_SOC_MT7628)) {
		FUNC4(mac->hw, (macaddr[0] << 8) | macaddr[1],
			MT7628_SDM_MAC_ADRH);
		FUNC4(mac->hw, (macaddr[2] << 24) | (macaddr[3] << 16) |
			(macaddr[4] << 8) | macaddr[5],
			MT7628_SDM_MAC_ADRL);
	} else {
		FUNC4(mac->hw, (macaddr[0] << 8) | macaddr[1],
			FUNC0(mac->id));
		FUNC4(mac->hw, (macaddr[2] << 24) | (macaddr[3] << 16) |
			(macaddr[4] << 8) | macaddr[5],
			FUNC1(mac->id));
	}
	FUNC7(&mac->hw->page_lock);

	return 0;
}