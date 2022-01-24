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
struct wcn36xx {int /*<<< orphan*/  hal_buf; int /*<<< orphan*/  dxe_lock; int /*<<< orphan*/  vif_list; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WCN36XX_DBG_MAC ; 
 int /*<<< orphan*/  WCN36XX_HAL_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wcn36xx*) ; 
 int FUNC6 (struct wcn36xx*) ; 
 int FUNC7 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC8 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC9 (struct wcn36xx*) ; 
 int FUNC10 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC13 (struct wcn36xx*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wcn36xx*) ; 
 int FUNC15 (struct wcn36xx*) ; 
 int FUNC16 (struct wcn36xx*) ; 
 int FUNC17 (struct wcn36xx*) ; 
 int FUNC18 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC19 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

__attribute__((used)) static int FUNC21(struct ieee80211_hw *hw)
{
	struct wcn36xx *wcn = hw->priv;
	int ret;

	FUNC4(WCN36XX_DBG_MAC, "mac start\n");

	/* SMD initialization */
	ret = FUNC17(wcn);
	if (ret) {
		FUNC11("Failed to open smd channel: %d\n", ret);
		goto out_err;
	}

	/* Allocate memory pools for Mgmt BD headers and Data BD headers */
	ret = FUNC7(wcn);
	if (ret) {
		FUNC11("Failed to alloc DXE mempool: %d\n", ret);
		goto out_smd_close;
	}

	ret = FUNC6(wcn);
	if (ret) {
		FUNC11("Failed to alloc DXE ctl blocks: %d\n", ret);
		goto out_free_dxe_pool;
	}

	wcn->hal_buf = FUNC2(WCN36XX_HAL_BUF_SIZE, GFP_KERNEL);
	if (!wcn->hal_buf) {
		FUNC11("Failed to allocate smd buf\n");
		ret = -ENOMEM;
		goto out_free_dxe_ctl;
	}

	ret = FUNC16(wcn);
	if (ret) {
		FUNC11("Failed to push NV to chip\n");
		goto out_free_smd_buf;
	}

	ret = FUNC18(wcn);
	if (ret) {
		FUNC11("Failed to start chip\n");
		goto out_free_smd_buf;
	}

	if (!FUNC13(wcn, 1, 2, 2, 24)) {
		ret = FUNC15(wcn);
		if (ret)
			FUNC20("Exchange feature caps failed\n");
		else
			FUNC12(wcn);
	}

	/* DMA channel initialization */
	ret = FUNC10(wcn);
	if (ret) {
		FUNC11("DXE init failed\n");
		goto out_smd_stop;
	}

	FUNC5(wcn);

	FUNC0(&wcn->vif_list);
	FUNC3(&wcn->dxe_lock);

	return 0;

out_smd_stop:
	FUNC19(wcn);
out_free_smd_buf:
	FUNC1(wcn->hal_buf);
out_free_dxe_ctl:
	FUNC8(wcn);
out_free_dxe_pool:
	FUNC9(wcn);
out_smd_close:
	FUNC14(wcn);
out_err:
	return ret;
}