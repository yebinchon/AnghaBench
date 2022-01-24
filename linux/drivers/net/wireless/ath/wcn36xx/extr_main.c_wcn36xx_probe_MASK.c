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
struct wcn36xx {int first_boot; int /*<<< orphan*/  dxe_base; int /*<<< orphan*/  ccu_base; struct ieee80211_hw* hw; int /*<<< orphan*/  smd_channel; int /*<<< orphan*/  scan_work; TYPE_1__* dev; int /*<<< orphan*/  scan_lock; int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  conf_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  WCN36XX_DBG_MAC ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*) ; 
 int FUNC9 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC14 (void*,char*,int /*<<< orphan*/ ,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  wcn36xx_hw_scan_worker ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC18 (struct wcn36xx*) ; 
 int /*<<< orphan*/  wcn36xx_ops ; 
 int FUNC19 (struct wcn36xx*,struct platform_device*) ; 
 int /*<<< orphan*/  wcn36xx_smd_rsp_process ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct ieee80211_hw *hw;
	struct wcn36xx *wcn;
	void *wcnss;
	int ret;
	const u8 *addr;

	FUNC15(WCN36XX_DBG_MAC, "platform probe\n");

	wcnss = FUNC5(pdev->dev.parent);

	hw = FUNC7(sizeof(struct wcn36xx), &wcn36xx_ops);
	if (!hw) {
		FUNC16("failed to alloc hw\n");
		ret = -ENOMEM;
		goto out_err;
	}
	FUNC13(pdev, hw);
	wcn = hw->priv;
	wcn->hw = hw;
	wcn->dev = &pdev->dev;
	wcn->first_boot = true;
	FUNC11(&wcn->conf_mutex);
	FUNC11(&wcn->hal_mutex);
	FUNC11(&wcn->scan_lock);

	ret = FUNC6(wcn->dev, FUNC0(32));
	if (ret < 0) {
		FUNC16("failed to set DMA mask: %d\n", ret);
		goto out_wq;
	}

	FUNC1(&wcn->scan_work, wcn36xx_hw_scan_worker);

	wcn->smd_channel = FUNC14(wcnss, "WLAN_CTRL", wcn36xx_smd_rsp_process, hw);
	if (FUNC2(wcn->smd_channel)) {
		FUNC16("failed to open WLAN_CTRL channel\n");
		ret = FUNC3(wcn->smd_channel);
		goto out_wq;
	}

	addr = FUNC12(pdev->dev.of_node, "local-mac-address", &ret);
	if (addr && ret != ETH_ALEN) {
		FUNC16("invalid local-mac-address\n");
		ret = -EINVAL;
		goto out_wq;
	} else if (addr) {
		FUNC17("mac address: %pM\n", addr);
		FUNC4(wcn->hw, addr);
	}

	ret = FUNC19(wcn, pdev);
	if (ret)
		goto out_wq;

	FUNC18(wcn);
	ret = FUNC9(wcn->hw);
	if (ret)
		goto out_unmap;

	return 0;

out_unmap:
	FUNC10(wcn->ccu_base);
	FUNC10(wcn->dxe_base);
out_wq:
	FUNC8(hw);
out_err:
	return ret;
}