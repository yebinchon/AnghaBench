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
struct ath10k_ahb {int /*<<< orphan*/  cpu_init_rst; int /*<<< orphan*/  radio_srif_rst; int /*<<< orphan*/  radio_warm_rst; int /*<<< orphan*/  radio_cold_rst; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ath10k_ahb* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar)
{
	struct ath10k_ahb *ar_ahb = FUNC1(ar);
	int ret;

	if (FUNC0(ar_ahb->radio_cold_rst) ||
	    FUNC0(ar_ahb->radio_warm_rst) ||
	    FUNC0(ar_ahb->radio_srif_rst) ||
	    FUNC0(ar_ahb->cpu_init_rst)) {
		FUNC2(ar, "rst ctrl(s) is/are not initialized\n");
		return -EINVAL;
	}

	ret = FUNC3(ar_ahb->radio_cold_rst);
	if (ret) {
		FUNC2(ar, "failed to deassert radio cold rst: %d\n", ret);
		return ret;
	}

	ret = FUNC3(ar_ahb->radio_warm_rst);
	if (ret) {
		FUNC2(ar, "failed to deassert radio warm rst: %d\n", ret);
		return ret;
	}

	ret = FUNC3(ar_ahb->radio_srif_rst);
	if (ret) {
		FUNC2(ar, "failed to deassert radio srif rst: %d\n", ret);
		return ret;
	}

	ret = FUNC3(ar_ahb->cpu_init_rst);
	if (ret) {
		FUNC2(ar, "failed to deassert cpu init rst: %d\n", ret);
		return ret;
	}

	return 0;
}