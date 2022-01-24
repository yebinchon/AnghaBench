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
struct mmc_host {int dummy; } ;
struct intel_host {int dsm_fns; int /*<<< orphan*/  hs_caps; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_DSM_FNS ; 
 int /*<<< orphan*/  INTEL_DSM_HS_CAPS ; 
 int FUNC0 (struct intel_host*,struct device*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_host*,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct intel_host *intel_host, struct device *dev,
			   struct mmc_host *mmc)
{
	int err;

	intel_host->hs_caps = ~0;

	err = FUNC0(intel_host, dev, INTEL_DSM_FNS, &intel_host->dsm_fns);
	if (err) {
		FUNC3("%s: DSM not supported, error %d\n",
			 FUNC2(mmc), err);
		return;
	}

	FUNC3("%s: DSM function mask %#x\n",
		 FUNC2(mmc), intel_host->dsm_fns);

	FUNC1(intel_host, dev, INTEL_DSM_HS_CAPS, &intel_host->hs_caps);
}