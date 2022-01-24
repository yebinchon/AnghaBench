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
typedef  int /*<<< orphan*/  u32 ;
struct mmc_host {int dummy; } ;
struct dw_mci_slot {struct mmc_host* mmc; struct dw_mci* host; } ;
struct dw_mci_exynos_priv_data {scalar_t__ tuned_sample; } ;
struct dw_mci {struct dw_mci_exynos_priv_data* priv; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TMOUT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct dw_mci*) ; 
 int FUNC2 (struct dw_mci*) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_mci*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_mci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dw_mci_slot *slot, u32 opcode)
{
	struct dw_mci *host = slot->host;
	struct dw_mci_exynos_priv_data *priv = host->priv;
	struct mmc_host *mmc = slot->mmc;
	u8 start_smpl, smpl, candiates = 0;
	s8 found = -1;
	int ret = 0;

	start_smpl = FUNC1(host);

	do {
		FUNC4(host, TMOUT, ~0);
		smpl = FUNC2(host);

		if (!FUNC5(mmc, opcode, NULL))
			candiates |= (1 << smpl);

	} while (start_smpl != smpl);

	found = FUNC0(candiates);
	if (found >= 0) {
		FUNC3(host, found);
		priv->tuned_sample = found;
	} else {
		ret = -EIO;
	}

	return ret;
}