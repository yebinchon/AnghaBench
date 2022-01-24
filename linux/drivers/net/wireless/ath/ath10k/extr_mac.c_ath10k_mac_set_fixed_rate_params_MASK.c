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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ath10k_vif {int /*<<< orphan*/  vdev_id; struct ath10k* ar; } ;
struct TYPE_4__ {TYPE_1__* vdev_param; } ;
struct ath10k {TYPE_2__ wmi; int /*<<< orphan*/  conf_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  ldpc; int /*<<< orphan*/  sgi; int /*<<< orphan*/  nss; int /*<<< orphan*/  fixed_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ath10k_vif *arvif,
					    u8 rate, u8 nss, u8 sgi, u8 ldpc)
{
	struct ath10k *ar = arvif->ar;
	u32 vdev_param;
	int ret;

	FUNC3(&ar->conf_mutex);

	FUNC0(ar, ATH10K_DBG_MAC, "mac set fixed rate params vdev %i rate 0x%02hhx nss %hhu sgi %hhu\n",
		   arvif->vdev_id, rate, nss, sgi);

	vdev_param = ar->wmi.vdev_param->fixed_rate;
	ret = FUNC2(ar, arvif->vdev_id, vdev_param, rate);
	if (ret) {
		FUNC1(ar, "failed to set fixed rate param 0x%02x: %d\n",
			    rate, ret);
		return ret;
	}

	vdev_param = ar->wmi.vdev_param->nss;
	ret = FUNC2(ar, arvif->vdev_id, vdev_param, nss);
	if (ret) {
		FUNC1(ar, "failed to set nss param %d: %d\n", nss, ret);
		return ret;
	}

	vdev_param = ar->wmi.vdev_param->sgi;
	ret = FUNC2(ar, arvif->vdev_id, vdev_param, sgi);
	if (ret) {
		FUNC1(ar, "failed to set sgi param %d: %d\n", sgi, ret);
		return ret;
	}

	vdev_param = ar->wmi.vdev_param->ldpc;
	ret = FUNC2(ar, arvif->vdev_id, vdev_param, ldpc);
	if (ret) {
		FUNC1(ar, "failed to set ldpc param %d: %d\n", ldpc, ret);
		return ret;
	}

	return 0;
}