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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {scalar_t__ uapsd; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;
struct ath10k_vif {int /*<<< orphan*/  vdev_id; TYPE_2__ u; struct ath10k* ar; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  WMI_STA_PS_PARAM_PSPOLL_COUNT ; 
 int /*<<< orphan*/  WMI_STA_PS_PSPOLL_COUNT_NO_MAX ; 
 int /*<<< orphan*/  WMI_STA_PS_PSPOLL_COUNT_UAPSD ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ath10k_vif *arvif)
{
	struct ath10k *ar = arvif->ar;
	u32 param;
	u32 value;
	int ret;

	FUNC2(&arvif->ar->conf_mutex);

	if (arvif->u.sta.uapsd)
		value = WMI_STA_PS_PSPOLL_COUNT_UAPSD;
	else
		value = WMI_STA_PS_PSPOLL_COUNT_NO_MAX;

	param = WMI_STA_PS_PARAM_PSPOLL_COUNT;
	ret = FUNC1(ar, arvif->vdev_id,
					  param, value);
	if (ret) {
		FUNC0(ar, "failed to submit ps poll count %u on vdev %i: %d\n",
			    value, arvif->vdev_id, ret);
		return ret;
	}

	return 0;
}