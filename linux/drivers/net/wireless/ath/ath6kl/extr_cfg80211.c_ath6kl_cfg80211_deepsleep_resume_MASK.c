#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ath6kl_vif {int /*<<< orphan*/  fw_vif_idx; } ;
struct ath6kl {TYPE_1__* wmi; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {scalar_t__ pwr_mode; scalar_t__ saved_pwr_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_HOST_MODE_AWAKE ; 
 int /*<<< orphan*/  ATH6KL_STATE_ON ; 
 int EIO ; 
 struct ath6kl_vif* FUNC0 (struct ath6kl*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ath6kl *ar)
{
	struct ath6kl_vif *vif;
	int ret;

	vif = FUNC0(ar);

	if (!vif)
		return -EIO;

	if (ar->wmi->pwr_mode != ar->wmi->saved_pwr_mode) {
		ret = FUNC1(ar->wmi, 0,
					       ar->wmi->saved_pwr_mode);
		if (ret)
			return ret;
	}

	ret = FUNC3(ar->wmi, vif->fw_vif_idx,
						 ATH6KL_HOST_MODE_AWAKE);
	if (ret)
		return ret;

	ar->state = ATH6KL_STATE_ON;

	/* Reset scan parameter to default values */
	ret = FUNC2(ar->wmi, vif->fw_vif_idx,
					0, 0, 0, 0, 0, 0, 3, 0, 0, 0);
	if (ret)
		return ret;

	return 0;
}