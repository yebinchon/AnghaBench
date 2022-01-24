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
typedef  enum ath10k_firmware_mode { ____Placeholder_ath10k_firmware_mode } ath10k_firmware_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int FUNC0 (struct ath10k*) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int FUNC5 (struct ath10k*) ; 
 int FUNC6 (struct ath10k*) ; 

__attribute__((used)) static int FUNC7(struct ath10k *ar,
				   enum ath10k_firmware_mode fw_mode)
{
	int ret;

	FUNC2(ar, ATH10K_DBG_BOOT, "boot ahb hif power up\n");

	ret = FUNC0(ar);
	if (ret) {
		FUNC3(ar, "failed to reset chip: %d\n", ret);
		goto out;
	}

	ret = FUNC6(ar);
	if (ret) {
		FUNC3(ar, "failed to initialize CE: %d\n", ret);
		goto out;
	}

	ret = FUNC5(ar);
	if (ret) {
		FUNC3(ar, "failed to setup init config: %d\n", ret);
		goto err_ce_deinit;
	}

	ret = FUNC1(ar);
	if (ret) {
		FUNC3(ar, "could not wake up target CPU: %d\n", ret);
		goto err_ce_deinit;
	}

	return 0;

err_ce_deinit:
	FUNC4(ar);
out:
	return ret;
}