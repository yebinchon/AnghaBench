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
 int CE_COUNT ; 
 int FUNC0 (struct ath10k*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int,int) ; 
 int /*<<< orphan*/ * host_ce_config_wlan ; 

__attribute__((used)) static int FUNC2(struct ath10k *ar)
{
	int i, ret;

	for (i = 0; i < CE_COUNT; i++) {
		ret = FUNC0(ar, i, &host_ce_config_wlan[i]);
		if (ret) {
			FUNC1(ar, "failed to initialize copy engine pipe %d: %d\n",
				   i, ret);
			return ret;
		}
	}

	return 0;
}