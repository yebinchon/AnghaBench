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
struct ath10k_htt {int /*<<< orphan*/  max_num_amsdu; int /*<<< orphan*/  max_num_ampdu; int /*<<< orphan*/  target_version_received; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HTT_TARGET_VERSION_TIMEOUT_HZ ; 
 int FUNC0 (struct ath10k_htt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath10k_htt*) ; 
 int FUNC2 (struct ath10k_htt*) ; 
 int FUNC3 (struct ath10k_htt*) ; 
 int FUNC4 (struct ath10k_htt*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(struct ath10k_htt *htt)
{
	struct ath10k *ar = htt->ar;
	int status;

	FUNC6(&htt->target_version_received);

	status = FUNC1(htt);
	if (status)
		return status;

	status = FUNC7(&htt->target_version_received,
					     HTT_TARGET_VERSION_TIMEOUT_HZ);
	if (status == 0) {
		FUNC5(ar, "htt version request timed out\n");
		return -ETIMEDOUT;
	}

	status = FUNC4(htt);
	if (status) {
		FUNC5(ar, "failed to verify htt version: %d\n",
			    status);
		return status;
	}

	status = FUNC2(htt);
	if (status)
		return status;

	status = FUNC3(htt);
	if (status) {
		FUNC5(ar, "failed to setup rx ring: %d\n",
			    status);
		return status;
	}

	status = FUNC0(htt,
					     htt->max_num_ampdu,
					     htt->max_num_amsdu);
	if (status) {
		FUNC5(ar, "failed to setup amsdu/ampdu limit: %d\n",
			    status);
		return status;
	}

	return 0;
}