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
struct ath10k_vreg_info {int /*<<< orphan*/  max_v; int /*<<< orphan*/  reg; scalar_t__ settle_delay; int /*<<< orphan*/  name; scalar_t__ load_ua; int /*<<< orphan*/  min_v; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_SNOC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar,
				 struct ath10k_vreg_info *vreg_info)
{
	int ret;

	FUNC0(ar, ATH10K_DBG_SNOC, "snoc regulator %s being enabled\n",
		   vreg_info->name);

	ret = FUNC4(vreg_info->reg, vreg_info->min_v,
				    vreg_info->max_v);
	if (ret) {
		FUNC1(ar,
			   "failed to set regulator %s voltage-min: %d voltage-max: %d\n",
			   vreg_info->name, vreg_info->min_v, vreg_info->max_v);
		return ret;
	}

	if (vreg_info->load_ua) {
		ret = FUNC3(vreg_info->reg, vreg_info->load_ua);
		if (ret < 0) {
			FUNC1(ar, "failed to set regulator %s load: %d\n",
				   vreg_info->name, vreg_info->load_ua);
			goto err_set_load;
		}
	}

	ret = FUNC2(vreg_info->reg);
	if (ret) {
		FUNC1(ar, "failed to enable regulator %s\n",
			   vreg_info->name);
		goto err_enable;
	}

	if (vreg_info->settle_delay)
		FUNC5(vreg_info->settle_delay);

	return 0;

err_enable:
	FUNC3(vreg_info->reg, 0);
err_set_load:
	FUNC4(vreg_info->reg, 0, vreg_info->max_v);

	return ret;
}