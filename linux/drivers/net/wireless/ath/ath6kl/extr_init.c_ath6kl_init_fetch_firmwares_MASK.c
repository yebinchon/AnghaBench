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
struct ath6kl {int fw_api; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_BOOT ; 
 int /*<<< orphan*/  ATH6KL_FW_API2_FILE ; 
 int /*<<< orphan*/  ATH6KL_FW_API3_FILE ; 
 int /*<<< orphan*/  ATH6KL_FW_API4_FILE ; 
 int /*<<< orphan*/  ATH6KL_FW_API5_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct ath6kl*) ; 
 int FUNC2 (struct ath6kl*) ; 
 int FUNC3 (struct ath6kl*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath6kl*) ; 

int FUNC5(struct ath6kl *ar)
{
	int ret;

	ret = FUNC1(ar);
	if (ret)
		return ret;

	ret = FUNC4(ar);
	if (ret)
		return ret;

	ret = FUNC3(ar, ATH6KL_FW_API5_FILE);
	if (ret == 0) {
		ar->fw_api = 5;
		goto out;
	}

	ret = FUNC3(ar, ATH6KL_FW_API4_FILE);
	if (ret == 0) {
		ar->fw_api = 4;
		goto out;
	}

	ret = FUNC3(ar, ATH6KL_FW_API3_FILE);
	if (ret == 0) {
		ar->fw_api = 3;
		goto out;
	}

	ret = FUNC3(ar, ATH6KL_FW_API2_FILE);
	if (ret == 0) {
		ar->fw_api = 2;
		goto out;
	}

	ret = FUNC2(ar);
	if (ret)
		return ret;

	ar->fw_api = 1;

out:
	FUNC0(ATH6KL_DBG_BOOT, "using fw api %d\n", ar->fw_api);

	return 0;
}