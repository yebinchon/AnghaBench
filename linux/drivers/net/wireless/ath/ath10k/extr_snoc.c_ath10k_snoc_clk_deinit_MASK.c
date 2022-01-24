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
struct ath10k_clk_info {int /*<<< orphan*/  handle; int /*<<< orphan*/  name; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH10K_DBG_SNOC ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct ath10k_snoc* FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  clk_cfg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar)
{
	struct ath10k_snoc *ar_snoc = FUNC2(ar);
	struct ath10k_clk_info *clk_info;
	int i;

	for (i = 0; i < FUNC0(clk_cfg); i++) {
		clk_info = &ar_snoc->clk[i];

		if (!clk_info->handle)
			continue;

		FUNC1(ar, ATH10K_DBG_SNOC, "snoc clock %s being disabled\n",
			   clk_info->name);

		FUNC3(clk_info->handle);
	}

	return 0;
}