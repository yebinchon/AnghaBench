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
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  timeout; } ;
struct ath10k {scalar_t__ state; int /*<<< orphan*/  restart_work; TYPE_1__ scan; int /*<<< orphan*/  set_coverage_class_work; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 scalar_t__ ATH10K_STATE_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw)
{
	struct ath10k *ar = hw->priv;

	FUNC0(ar);

	FUNC4(&ar->conf_mutex);
	if (ar->state != ATH10K_STATE_OFF) {
		FUNC1(ar);
		ar->state = ATH10K_STATE_OFF;
	}
	FUNC5(&ar->conf_mutex);

	FUNC3(&ar->set_coverage_class_work);
	FUNC2(&ar->scan.timeout);
	FUNC3(&ar->restart_work);
}