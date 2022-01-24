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
struct ath10k_snoc {struct ath10k_clk_info* clk; } ;
struct ath10k_clk_info {int /*<<< orphan*/  handle; int /*<<< orphan*/  name; scalar_t__ freq; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH10K_DBG_SNOC ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int /*<<< orphan*/ ,...) ; 
 struct ath10k_snoc* FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  clk_cfg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct ath10k *ar)
{
	struct ath10k_snoc *ar_snoc = FUNC3(ar);
	struct ath10k_clk_info *clk_info;
	int ret = 0;
	int i;

	for (i = 0; i < FUNC0(clk_cfg); i++) {
		clk_info = &ar_snoc->clk[i];

		if (!clk_info->handle)
			continue;

		FUNC1(ar, ATH10K_DBG_SNOC, "snoc clock %s being enabled\n",
			   clk_info->name);

		if (clk_info->freq) {
			ret = FUNC6(clk_info->handle, clk_info->freq);

			if (ret) {
				FUNC2(ar, "failed to set clock %s freq %u\n",
					   clk_info->name, clk_info->freq);
				goto err_clock_config;
			}
		}

		ret = FUNC5(clk_info->handle);
		if (ret) {
			FUNC2(ar, "failed to enable clock %s\n",
				   clk_info->name);
			goto err_clock_config;
		}
	}

	return 0;

err_clock_config:
	for (i = i - 1; i >= 0; i--) {
		clk_info = &ar_snoc->clk[i];

		if (!clk_info->handle)
			continue;

		FUNC4(clk_info->handle);
	}

	return ret;
}