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
typedef  int /*<<< orphan*/  u32 ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int ATH10K_PCI_NUM_WARM_RESET_ATTEMPTS ; 
 scalar_t__ ATH10K_PCI_RESET_WARM_ONLY ; 
 int EPERM ; 
 int /*<<< orphan*/  QCA988X_HOST_INTEREST_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ath10k*) ; 
 scalar_t__ ath10k_pci_reset_mode ; 
 int FUNC4 (struct ath10k*) ; 
 int FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,char*,...) ; 

__attribute__((used)) static int FUNC7(struct ath10k *ar)
{
	int i, ret;
	u32 val;

	FUNC0(ar, ATH10K_DBG_BOOT, "boot 988x chip reset\n");

	/* Some hardware revisions (e.g. CUS223v2) has issues with cold reset.
	 * It is thus preferred to use warm reset which is safer but may not be
	 * able to recover the device from all possible fail scenarios.
	 *
	 * Warm reset doesn't always work on first try so attempt it a few
	 * times before giving up.
	 */
	for (i = 0; i < ATH10K_PCI_NUM_WARM_RESET_ATTEMPTS; i++) {
		ret = FUNC5(ar);
		if (ret) {
			FUNC6(ar, "failed to warm reset attempt %d of %d: %d\n",
				    i + 1, ATH10K_PCI_NUM_WARM_RESET_ATTEMPTS,
				    ret);
			continue;
		}

		/* FIXME: Sometimes copy engine doesn't recover after warm
		 * reset. In most cases this needs cold reset. In some of these
		 * cases the device is in such a state that a cold reset may
		 * lock up the host.
		 *
		 * Reading any host interest register via copy engine is
		 * sufficient to verify if device is capable of booting
		 * firmware blob.
		 */
		ret = FUNC3(ar);
		if (ret) {
			FUNC6(ar, "failed to init copy engine: %d\n",
				    ret);
			continue;
		}

		ret = FUNC2(ar, QCA988X_HOST_INTEREST_ADDRESS,
					     &val);
		if (ret) {
			FUNC6(ar, "failed to poke copy engine: %d\n",
				    ret);
			continue;
		}

		FUNC0(ar, ATH10K_DBG_BOOT, "boot chip reset complete (warm)\n");
		return 0;
	}

	if (ath10k_pci_reset_mode == ATH10K_PCI_RESET_WARM_ONLY) {
		FUNC6(ar, "refusing cold reset as requested\n");
		return -EPERM;
	}

	ret = FUNC1(ar);
	if (ret) {
		FUNC6(ar, "failed to cold reset: %d\n", ret);
		return ret;
	}

	ret = FUNC4(ar);
	if (ret) {
		FUNC6(ar, "failed to wait for target after cold reset: %d\n",
			    ret);
		return ret;
	}

	FUNC0(ar, ATH10K_DBG_BOOT, "boot qca988x chip reset complete (cold)\n");

	return 0;
}