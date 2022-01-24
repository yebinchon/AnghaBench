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
 int FUNC0 (struct ath10k*) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar)
{
	int ret;

	ret = FUNC1(ar);
	if (ret) {
		FUNC2(ar, ATH10K_DBG_BOOT,
			   "failed to load pre cal data: %d\n", ret);
		return ret;
	}

	ret = FUNC0(ar);
	if (ret) {
		FUNC4(ar, "failed to get board id: %d\n", ret);
		return ret;
	}

	ret = FUNC3(ar);
	if (ret) {
		FUNC4(ar, "failed to run otp: %d\n", ret);
		return ret;
	}

	FUNC2(ar, ATH10K_DBG_BOOT,
		   "pre cal configuration done successfully\n");

	return 0;
}