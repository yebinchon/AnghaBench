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
struct device {int dummy; } ;
struct clk {int dummy; } ;
struct ath10k_clk_info {int freq; struct clk* handle; int /*<<< orphan*/  name; scalar_t__ required; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_SNOC ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 struct clk* FUNC4 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar, struct device *dev,
			       struct ath10k_clk_info *clk_info)
{
	struct clk *handle;
	int ret = 0;

	handle = FUNC4(dev, clk_info->name);
	if (FUNC0(handle)) {
		ret = FUNC1(handle);
		if (clk_info->required) {
			FUNC3(ar, "snoc clock %s isn't available: %d\n",
				   clk_info->name, ret);
			return ret;
		}
		FUNC2(ar, ATH10K_DBG_SNOC, "snoc ignoring clock %s: %d\n",
			   clk_info->name,
			   ret);
		return 0;
	}

	FUNC2(ar, ATH10K_DBG_SNOC, "snoc clock %s freq %u\n",
		   clk_info->name, clk_info->freq);

	clk_info->handle = handle;

	return ret;
}