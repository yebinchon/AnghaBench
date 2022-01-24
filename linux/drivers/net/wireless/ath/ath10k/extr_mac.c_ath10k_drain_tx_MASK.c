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
struct ath10k {int /*<<< orphan*/  wmi_mgmt_tx_work; int /*<<< orphan*/  offchan_tx_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct ath10k *ar)
{
	/* make sure rcu-protected mac80211 tx path itself is drained */
	FUNC3();

	FUNC1(ar);
	FUNC0(ar);

	FUNC2(&ar->offchan_tx_work);
	FUNC2(&ar->wmi_mgmt_tx_work);
}