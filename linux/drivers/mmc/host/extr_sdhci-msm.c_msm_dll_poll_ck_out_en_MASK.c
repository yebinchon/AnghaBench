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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct sdhci_msm_offset {scalar_t__ core_dll_config; } ;
struct sdhci_host {scalar_t__ ioaddr; struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int CORE_CK_OUT_EN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int FUNC3 (scalar_t__) ; 
 struct sdhci_msm_offset* FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static inline int FUNC6(struct sdhci_host *host, u8 poll)
{
	u32 wait_cnt = 50;
	u8 ck_out_en;
	struct mmc_host *mmc = host->mmc;
	const struct sdhci_msm_offset *msm_offset =
					FUNC4(host);

	/* Poll for CK_OUT_EN bit.  max. poll time = 50us */
	ck_out_en = !!(FUNC3(host->ioaddr +
			msm_offset->core_dll_config) & CORE_CK_OUT_EN);

	while (ck_out_en != poll) {
		if (--wait_cnt == 0) {
			FUNC0(FUNC1(mmc), "%s: CK_OUT_EN bit is not %d\n",
			       FUNC2(mmc), poll);
			return -ETIMEDOUT;
		}
		FUNC5(1);

		ck_out_en = !!(FUNC3(host->ioaddr +
			msm_offset->core_dll_config) & CORE_CK_OUT_EN);
	}

	return 0;
}