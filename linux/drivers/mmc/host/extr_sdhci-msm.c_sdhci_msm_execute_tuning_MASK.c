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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {int use_cdr; int tuning_done; scalar_t__ saved_tuning_phase; } ;
struct sdhci_host {int flags; TYPE_1__* mmc; } ;
struct mmc_ios {int /*<<< orphan*/  clock; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int EIO ; 
 int SDHCI_HS400_TUNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 struct sdhci_host* FUNC4 (struct mmc_host*) ; 
 int FUNC5 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sdhci_host*,scalar_t__) ; 
 int FUNC7 (struct sdhci_host*,scalar_t__*,scalar_t__) ; 
 int FUNC8 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC11 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct sdhci_host*,int) ; 
 struct sdhci_msm_host* FUNC13 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC14 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC15(struct mmc_host *mmc, u32 opcode)
{
	struct sdhci_host *host = FUNC4(mmc);
	int tuning_seq_cnt = 3;
	u8 phase, tuned_phases[16], tuned_phase_cnt = 0;
	int rc;
	struct mmc_ios ios = host->mmc->ios;
	struct sdhci_pltfm_host *pltfm_host = FUNC14(host);
	struct sdhci_msm_host *msm_host = FUNC13(pltfm_host);

	if (!FUNC11(host)) {
		msm_host->use_cdr = false;
		FUNC12(host, false);
		return 0;
	}

	/* Clock-Data-Recovery used to dynamically adjust RX sampling point */
	msm_host->use_cdr = true;

	/*
	 * For HS400 tuning in HS200 timing requires:
	 * - select MCLK/2 in VENDOR_SPEC
	 * - program MCLK to 400MHz (or nearest supported) in GCC
	 */
	if (host->flags & SDHCI_HS400_TUNING) {
		FUNC10(host);
		FUNC9(host, ios.clock);
		host->flags &= ~SDHCI_HS400_TUNING;
	}

retry:
	/* First of all reset the tuning block */
	rc = FUNC8(host);
	if (rc)
		return rc;

	phase = 0;
	do {
		/* Set the phase in delay line hw block */
		rc = FUNC6(host, phase);
		if (rc)
			return rc;

		rc = FUNC5(mmc, opcode, NULL);
		if (!rc) {
			/* Tuning is successful at this tuning point */
			tuned_phases[tuned_phase_cnt++] = phase;
			FUNC1(FUNC2(mmc), "%s: Found good phase = %d\n",
				 FUNC3(mmc), phase);
		}
	} while (++phase < FUNC0(tuned_phases));

	if (tuned_phase_cnt) {
		rc = FUNC7(host, tuned_phases,
						     tuned_phase_cnt);
		if (rc < 0)
			return rc;
		else
			phase = rc;

		/*
		 * Finally set the selected phase in delay
		 * line hw block.
		 */
		rc = FUNC6(host, phase);
		if (rc)
			return rc;
		msm_host->saved_tuning_phase = phase;
		FUNC1(FUNC2(mmc), "%s: Setting the tuning phase to %d\n",
			 FUNC3(mmc), phase);
	} else {
		if (--tuning_seq_cnt)
			goto retry;
		/* Tuning failed */
		FUNC1(FUNC2(mmc), "%s: No tuning point found\n",
		       FUNC3(mmc));
		rc = -EIO;
	}

	if (!rc)
		msm_host->tuning_done = true;
	return rc;
}