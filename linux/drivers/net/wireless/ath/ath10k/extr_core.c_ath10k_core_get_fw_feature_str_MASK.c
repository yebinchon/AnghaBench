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
typedef  enum ath10k_fw_features { ____Placeholder_ath10k_fw_features } ath10k_fw_features ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ ATH10K_FW_FEATURE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int* ath10k_core_fw_feature_str ; 
 unsigned int FUNC3 (char*,size_t,char*,int) ; 

__attribute__((used)) static unsigned int FUNC4(char *buf,
						   size_t buf_len,
						   enum ath10k_fw_features feat)
{
	/* make sure that ath10k_core_fw_feature_str[] gets updated */
	FUNC1(FUNC0(ath10k_core_fw_feature_str) !=
		     ATH10K_FW_FEATURE_COUNT);

	if (feat >= FUNC0(ath10k_core_fw_feature_str) ||
	    FUNC2(!ath10k_core_fw_feature_str[feat])) {
		return FUNC3(buf, buf_len, "bit%d", feat);
	}

	return FUNC3(buf, buf_len, "%s", ath10k_core_fw_feature_str[feat]);
}