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
struct ath10k_vreg_info {int /*<<< orphan*/  name; int /*<<< orphan*/  max_v; int /*<<< orphan*/  reg; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_SNOC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar,
				  struct ath10k_vreg_info *vreg_info)
{
	int ret;

	FUNC0(ar, ATH10K_DBG_SNOC, "snoc regulator %s being disabled\n",
		   vreg_info->name);

	ret = FUNC2(vreg_info->reg);
	if (ret)
		FUNC1(ar, "failed to disable regulator %s\n",
			   vreg_info->name);

	ret = FUNC3(vreg_info->reg, 0);
	if (ret < 0)
		FUNC1(ar, "failed to set load %s\n", vreg_info->name);

	ret = FUNC4(vreg_info->reg, 0, vreg_info->max_v);
	if (ret)
		FUNC1(ar, "failed to set voltage %s\n", vreg_info->name);

	return ret;
}