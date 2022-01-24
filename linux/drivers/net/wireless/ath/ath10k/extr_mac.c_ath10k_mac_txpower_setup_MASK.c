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
struct TYPE_4__ {TYPE_1__* pdev_param; } ;
struct ath10k {TYPE_2__ wmi; int /*<<< orphan*/  conf_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  txpower_limit5g; int /*<<< orphan*/  txpower_limit2g; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int,int) ; 
 int FUNC2 (struct ath10k*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar, int txpower)
{
	int ret;
	u32 param;

	FUNC3(&ar->conf_mutex);

	FUNC0(ar, ATH10K_DBG_MAC, "mac txpower %d\n", txpower);

	param = ar->wmi.pdev_param->txpower_limit2g;
	ret = FUNC2(ar, param, txpower * 2);
	if (ret) {
		FUNC1(ar, "failed to set 2g txpower %d: %d\n",
			    txpower, ret);
		return ret;
	}

	param = ar->wmi.pdev_param->txpower_limit5g;
	ret = FUNC2(ar, param, txpower * 2);
	if (ret) {
		FUNC1(ar, "failed to set 5g txpower %d: %d\n",
			    txpower, ret);
		return ret;
	}

	return 0;
}