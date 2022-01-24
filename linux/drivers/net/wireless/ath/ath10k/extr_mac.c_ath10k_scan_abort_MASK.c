#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int state; } ;
struct ath10k {int /*<<< orphan*/  data_lock; TYPE_1__ scan; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
#define  ATH10K_SCAN_ABORTING 131 
#define  ATH10K_SCAN_IDLE 130 
#define  ATH10K_SCAN_RUNNING 129 
#define  ATH10K_SCAN_STARTING 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ath10k *ar)
{
	int ret;

	FUNC3(&ar->conf_mutex);

	FUNC4(&ar->data_lock);

	switch (ar->scan.state) {
	case ATH10K_SCAN_IDLE:
		/* This can happen if timeout worker kicked in and called
		 * abortion while scan completion was being processed.
		 */
		break;
	case ATH10K_SCAN_STARTING:
	case ATH10K_SCAN_ABORTING:
		FUNC2(ar, "refusing scan abortion due to invalid scan state: %s (%d)\n",
			    FUNC0(ar->scan.state),
			    ar->scan.state);
		break;
	case ATH10K_SCAN_RUNNING:
		ar->scan.state = ATH10K_SCAN_ABORTING;
		FUNC5(&ar->data_lock);

		ret = FUNC1(ar);
		if (ret)
			FUNC2(ar, "failed to abort scan: %d\n", ret);

		FUNC4(&ar->data_lock);
		break;
	}

	FUNC5(&ar->data_lock);
}