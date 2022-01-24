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
struct TYPE_2__ {int /*<<< orphan*/  fw_warm_reset_counter; } ;
struct ath10k {int /*<<< orphan*/  data_lock; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 int FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct ath10k *ar)
{
	int ret;

	FUNC0(ar, ATH10K_DBG_BOOT, "boot warm reset\n");

	FUNC9(&ar->data_lock);
	ar->stats.fw_warm_reset_counter++;
	FUNC10(&ar->data_lock);

	FUNC2(ar);

	/* Make sure the target CPU is not doing anything dangerous, e.g. if it
	 * were to access copy engine while host performs copy engine reset
	 * then it is possible for the device to confuse pci-e controller to
	 * the point of bringing host system to a complete stop (i.e. hang).
	 */
	FUNC7(ar);
	FUNC6(ar);
	FUNC1(ar);
	FUNC3(ar);

	FUNC5(ar);
	FUNC4(ar);
	FUNC6(ar);
	FUNC1(ar);

	ret = FUNC3(ar);
	if (ret) {
		FUNC8(ar, "failed to wait for target init: %d\n", ret);
		return ret;
	}

	FUNC0(ar, ATH10K_DBG_BOOT, "boot warm reset complete\n");

	return 0;
}