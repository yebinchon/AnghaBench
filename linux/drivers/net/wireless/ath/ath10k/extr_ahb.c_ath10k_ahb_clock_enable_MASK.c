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
struct ath10k_ahb {int /*<<< orphan*/  cmd_clk; int /*<<< orphan*/  ref_clk; int /*<<< orphan*/  rtc_clk; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ath10k_ahb* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar)
{
	struct ath10k_ahb *ar_ahb = FUNC1(ar);
	int ret;

	if (FUNC0(ar_ahb->cmd_clk) ||
	    FUNC0(ar_ahb->ref_clk) ||
	    FUNC0(ar_ahb->rtc_clk)) {
		FUNC2(ar, "clock(s) is/are not initialized\n");
		ret = -EIO;
		goto out;
	}

	ret = FUNC4(ar_ahb->cmd_clk);
	if (ret) {
		FUNC2(ar, "failed to enable cmd clk: %d\n", ret);
		goto out;
	}

	ret = FUNC4(ar_ahb->ref_clk);
	if (ret) {
		FUNC2(ar, "failed to enable ref clk: %d\n", ret);
		goto err_cmd_clk_disable;
	}

	ret = FUNC4(ar_ahb->rtc_clk);
	if (ret) {
		FUNC2(ar, "failed to enable rtc clk: %d\n", ret);
		goto err_ref_clk_disable;
	}

	return 0;

err_ref_clk_disable:
	FUNC3(ar_ahb->ref_clk);

err_cmd_clk_disable:
	FUNC3(ar_ahb->cmd_clk);

out:
	return ret;
}