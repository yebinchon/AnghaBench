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
struct ath10k {int /*<<< orphan*/  dev_flags; int /*<<< orphan*/  register_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_FLAG_CORE_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct ath10k *ar)
{
	FUNC7(&ar->register_work);

	if (!FUNC8(ATH10K_FLAG_CORE_REGISTERED, &ar->dev_flags))
		return;

	FUNC6(ar);
	/* Stop spectral before unregistering from mac80211 to remove the
	 * relayfs debugfs file cleanly. Otherwise the parent debugfs tree
	 * would be already be free'd recursively, leading to a double free.
	 */
	FUNC4(ar);

	/* We must unregister from mac80211 before we stop HTC and HIF.
	 * Otherwise we will fail to submit commands to FW and mac80211 will be
	 * unhappy about callback failures.
	 */
	FUNC3(ar);

	FUNC5(ar);

	FUNC1(ar);
	FUNC0(ar);

	FUNC2(ar);
}