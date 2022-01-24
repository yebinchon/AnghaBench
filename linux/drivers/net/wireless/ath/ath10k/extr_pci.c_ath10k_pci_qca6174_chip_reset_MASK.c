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
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*) ; 
 int FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar)
{
	int ret;

	FUNC0(ar, ATH10K_DBG_BOOT, "boot qca6174 chip reset\n");

	/* FIXME: QCA6174 requires cold + warm reset to work. */

	ret = FUNC1(ar);
	if (ret) {
		FUNC4(ar, "failed to cold reset: %d\n", ret);
		return ret;
	}

	ret = FUNC2(ar);
	if (ret) {
		FUNC4(ar, "failed to wait for target after cold reset: %d\n",
			    ret);
		return ret;
	}

	ret = FUNC3(ar);
	if (ret) {
		FUNC4(ar, "failed to warm reset: %d\n", ret);
		return ret;
	}

	FUNC0(ar, ATH10K_DBG_BOOT, "boot qca6174 chip reset complete (cold)\n");

	return 0;
}