#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ath6kl_vif {int /*<<< orphan*/  fw_vif_idx; } ;
struct ath6kl {TYPE_1__* wmi; int /*<<< orphan*/  flag; } ;
struct TYPE_3__ {int /*<<< orphan*/  pwr_mode; int /*<<< orphan*/  saved_pwr_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_WOW_MODE_DISABLE ; 
 int EIO ; 
 int /*<<< orphan*/  REC_POWER ; 
 int /*<<< orphan*/  WMI_READY ; 
 int FUNC0 (struct ath6kl*,struct ath6kl_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath6kl*) ; 
 struct ath6kl_vif* FUNC4 (struct ath6kl*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ath6kl *ar)
{
	struct ath6kl_vif *vif;
	int ret;

	vif = FUNC4(ar);
	if (!vif)
		return -EIO;

	if (!FUNC7(WMI_READY, &ar->flag)) {
		FUNC2("deepsleep failed as wmi is not ready\n");
		return -EIO;
	}

	FUNC1(ar);

	/* Save the current power mode before enabling power save */
	ar->wmi->saved_pwr_mode = ar->wmi->pwr_mode;

	ret = FUNC5(ar->wmi, 0, REC_POWER);
	if (ret)
		return ret;

	/* Disable WOW mode */
	ret = FUNC6(ar->wmi, vif->fw_vif_idx,
					  ATH6KL_WOW_MODE_DISABLE,
					  0, 0);
	if (ret)
		return ret;

	/* Flush all non control pkts in TX path */
	FUNC3(ar);

	ret = FUNC0(ar, vif);
	if (ret)
		return ret;

	return 0;
}