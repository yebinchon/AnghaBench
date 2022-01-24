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
struct cfg80211_scan_info {int aborted; } ;
struct TYPE_2__ {int state; int /*<<< orphan*/  completed; int /*<<< orphan*/  timeout; int /*<<< orphan*/  roc_freq; int /*<<< orphan*/  roc_notify; int /*<<< orphan*/  is_roc; } ;
struct ath10k {TYPE_1__ scan; int /*<<< orphan*/ * scan_channel; int /*<<< orphan*/  hw; int /*<<< orphan*/  data_lock; } ;

/* Variables and functions */
#define  ATH10K_SCAN_ABORTING 131 
#define  ATH10K_SCAN_IDLE 130 
#define  ATH10K_SCAN_RUNNING 129 
#define  ATH10K_SCAN_STARTING 128 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ath10k *ar)
{
	FUNC5(&ar->data_lock);

	switch (ar->scan.state) {
	case ATH10K_SCAN_IDLE:
		break;
	case ATH10K_SCAN_RUNNING:
	case ATH10K_SCAN_ABORTING:
		if (!ar->scan.is_roc) {
			struct cfg80211_scan_info info = {
				.aborted = (ar->scan.state ==
					    ATH10K_SCAN_ABORTING),
			};

			FUNC4(ar->hw, &info);
		} else if (ar->scan.roc_notify) {
			FUNC3(ar->hw);
		}
		/* fall through */
	case ATH10K_SCAN_STARTING:
		ar->scan.state = ATH10K_SCAN_IDLE;
		ar->scan_channel = NULL;
		ar->scan.roc_freq = 0;
		FUNC0(ar);
		FUNC1(&ar->scan.timeout);
		FUNC2(&ar->scan.completed);
		break;
	}
}