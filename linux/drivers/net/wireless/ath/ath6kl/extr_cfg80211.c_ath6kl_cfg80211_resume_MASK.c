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
struct ath6kl {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_SUSPEND ; 
#define  ATH6KL_STATE_CUTPOWER 130 
#define  ATH6KL_STATE_DEEPSLEEP 129 
#define  ATH6KL_STATE_WOW 128 
 int FUNC0 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (struct ath6kl*) ; 

int FUNC5(struct ath6kl *ar)
{
	int ret;

	switch (ar->state) {
	case  ATH6KL_STATE_WOW:
		FUNC1(ATH6KL_DBG_SUSPEND, "wow mode resume\n");

		ret = FUNC4(ar);
		if (ret) {
			FUNC3("wow mode resume failed: %d\n", ret);
			return ret;
		}

		break;

	case ATH6KL_STATE_DEEPSLEEP:
		FUNC1(ATH6KL_DBG_SUSPEND, "deep sleep resume\n");

		ret = FUNC0(ar);
		if (ret) {
			FUNC3("deep sleep resume failed: %d\n", ret);
			return ret;
		}
		break;

	case ATH6KL_STATE_CUTPOWER:
		FUNC1(ATH6KL_DBG_SUSPEND, "resume restoring power\n");

		ret = FUNC2(ar);
		if (ret) {
			FUNC3("Failed to boot hw in resume: %d\n", ret);
			return ret;
		}
		break;

	default:
		break;
	}

	return 0;
}