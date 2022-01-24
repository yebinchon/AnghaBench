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
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_2__ {int roc_notify; int /*<<< orphan*/  timeout; } ;
struct ath10k {TYPE_1__ scan; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  data_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw,
					   struct ieee80211_vif *vif)
{
	struct ath10k *ar = hw->priv;

	FUNC2(&ar->conf_mutex);

	FUNC4(&ar->data_lock);
	ar->scan.roc_notify = false;
	FUNC5(&ar->data_lock);

	FUNC0(ar);

	FUNC3(&ar->conf_mutex);

	FUNC1(&ar->scan.timeout);

	return 0;
}