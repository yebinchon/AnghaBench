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
struct ath10k {int monitor_started; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int EPERM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct ath10k*) ; 
 int FUNC3 (struct ath10k*) ; 
 int FUNC4 (struct ath10k*) ; 
 int FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ath10k *ar)
{
	bool needed;
	bool allowed;
	int ret;

	FUNC7(&ar->conf_mutex);

	needed = FUNC3(ar);
	allowed = FUNC2(ar);

	FUNC1(ar, ATH10K_DBG_MAC,
		   "mac monitor recalc started? %d needed? %d allowed? %d\n",
		   ar->monitor_started, needed, allowed);

	if (FUNC0(needed && !allowed)) {
		if (ar->monitor_started) {
			FUNC1(ar, ATH10K_DBG_MAC, "mac monitor stopping disallowed monitor\n");

			ret = FUNC5(ar);
			if (ret)
				FUNC6(ar, "failed to stop disallowed monitor: %d\n",
					    ret);
				/* not serious */
		}

		return -EPERM;
	}

	if (needed == ar->monitor_started)
		return 0;

	if (needed)
		return FUNC4(ar);
	else
		return FUNC5(ar);
}