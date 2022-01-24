#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct mlx5dr_ste_build {int dummy; } ;
struct mlx5dr_matcher_rx_tx {scalar_t__ num_of_builders6; scalar_t__ num_of_builders4; struct mlx5dr_ste_build* ste_builder4; struct mlx5dr_ste_build* ste_builder6; TYPE_2__* nic_tbl; } ;
struct mlx5dr_match_misc3 {int dummy; } ;
struct TYPE_8__ {struct mlx5dr_match_misc3 misc3; int /*<<< orphan*/  misc2; int /*<<< orphan*/  inner; int /*<<< orphan*/  misc; int /*<<< orphan*/  outer; } ;
struct mlx5dr_matcher {int match_criteria; TYPE_4__ mask; TYPE_3__* tbl; } ;
struct mlx5dr_match_param {int /*<<< orphan*/  misc2; struct mlx5dr_match_misc3 misc3; int /*<<< orphan*/  inner; int /*<<< orphan*/  misc; int /*<<< orphan*/  outer; } ;
struct mlx5dr_domain_rx_tx {scalar_t__ ste_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  caps; } ;
struct mlx5dr_domain {scalar_t__ type; TYPE_1__ info; } ;
struct TYPE_7__ {struct mlx5dr_domain* dmn; } ;
struct TYPE_6__ {struct mlx5dr_domain_rx_tx* nic_dmn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5dr_match_misc3,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mlx5dr_match_misc3*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int DR_MATCHER_CRITERIA_EMPTY ; 
 int DR_MATCHER_CRITERIA_INNER ; 
 int DR_MATCHER_CRITERIA_MISC ; 
 int DR_MATCHER_CRITERIA_MISC2 ; 
 int DR_MATCHER_CRITERIA_MISC3 ; 
 int DR_MATCHER_CRITERIA_OUTER ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ MLX5DR_DOMAIN_TYPE_FDB ; 
 scalar_t__ MLX5DR_DOMAIN_TYPE_NIC_RX ; 
 scalar_t__ MLX5DR_STE_TYPE_RX ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct mlx5dr_match_misc3*) ; 
 scalar_t__ FUNC10 (struct mlx5dr_match_misc3*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (struct mlx5dr_domain*) ; 
 int /*<<< orphan*/  FUNC21 (struct mlx5dr_domain*,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct mlx5dr_domain*,char*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct mlx5dr_ste_build*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int /*<<< orphan*/  FUNC27 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int FUNC28 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int /*<<< orphan*/  FUNC29 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int /*<<< orphan*/  FUNC30 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int /*<<< orphan*/  FUNC31 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int /*<<< orphan*/  FUNC32 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int /*<<< orphan*/  FUNC33 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int /*<<< orphan*/  FUNC34 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int /*<<< orphan*/  FUNC35 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int FUNC36 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC37 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int /*<<< orphan*/  FUNC38 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int /*<<< orphan*/  FUNC39 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int /*<<< orphan*/  FUNC40 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int /*<<< orphan*/  FUNC41 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int FUNC42 (struct mlx5dr_domain*,int,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int /*<<< orphan*/  FUNC44 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,int,int) ; 
 int FUNC45 (struct mlx5dr_ste_build*,struct mlx5dr_match_param*,struct mlx5dr_domain*,int,int) ; 
 int outer ; 

__attribute__((used)) static int FUNC46(struct mlx5dr_matcher *matcher,
				       struct mlx5dr_matcher_rx_tx *nic_matcher,
				       bool ipv6)
{
	struct mlx5dr_domain_rx_tx *nic_dmn = nic_matcher->nic_tbl->nic_dmn;
	struct mlx5dr_domain *dmn = matcher->tbl->dmn;
	struct mlx5dr_match_param mask = {};
	struct mlx5dr_match_misc3 *misc3;
	struct mlx5dr_ste_build *sb;
	u8 *num_of_builders;
	bool inner, rx;
	int idx = 0;
	int ret, i;

	if (ipv6) {
		sb = nic_matcher->ste_builder6;
		num_of_builders = &nic_matcher->num_of_builders6;
	} else {
		sb = nic_matcher->ste_builder4;
		num_of_builders = &nic_matcher->num_of_builders4;
	}

	rx = nic_dmn->ste_type == MLX5DR_STE_TYPE_RX;

	/* Create a temporary mask to track and clear used mask fields */
	if (matcher->match_criteria & DR_MATCHER_CRITERIA_OUTER)
		mask.outer = matcher->mask.outer;

	if (matcher->match_criteria & DR_MATCHER_CRITERIA_MISC)
		mask.misc = matcher->mask.misc;

	if (matcher->match_criteria & DR_MATCHER_CRITERIA_INNER)
		mask.inner = matcher->mask.inner;

	if (matcher->match_criteria & DR_MATCHER_CRITERIA_MISC2)
		mask.misc2 = matcher->mask.misc2;

	if (matcher->match_criteria & DR_MATCHER_CRITERIA_MISC3)
		mask.misc3 = matcher->mask.misc3;

	ret = FUNC42(dmn, matcher->match_criteria,
					 &matcher->mask, NULL);
	if (ret)
		return ret;

	/* Outer */
	if (matcher->match_criteria & (DR_MATCHER_CRITERIA_OUTER |
				       DR_MATCHER_CRITERIA_MISC |
				       DR_MATCHER_CRITERIA_MISC2 |
				       DR_MATCHER_CRITERIA_MISC3)) {
		inner = false;

		if (FUNC19(&mask.misc2))
			FUNC38(&sb[idx++], &mask, inner, rx);

		if (FUNC14(&mask.misc2))
			FUNC43(&sb[idx++], &mask, inner, rx);

		if (FUNC15(&mask.misc2))
			FUNC44(&sb[idx++], &mask, inner, rx);

		if (FUNC12(&mask.misc) &&
		    (dmn->type == MLX5DR_DOMAIN_TYPE_FDB ||
		     dmn->type == MLX5DR_DOMAIN_TYPE_NIC_RX)) {
			ret = FUNC45(&sb[idx++], &mask,
							    dmn, inner, rx);
			if (ret)
				return ret;
		}

		if (FUNC16(&mask.outer) &&
		    FUNC6(&mask.outer)) {
			ret = FUNC28(&sb[idx++], &mask,
							      inner, rx);
			if (ret)
				return ret;
		}

		if (FUNC16(&mask.outer))
			FUNC27(&sb[idx++], &mask, inner, rx);

		if (FUNC5(mask.outer, mask.misc, outer))
			FUNC26(&sb[idx++], &mask, inner, rx);

		if (ipv6) {
			if (FUNC7(&mask.outer))
				FUNC32(&sb[idx++], &mask,
								 inner, rx);

			if (FUNC17(&mask.outer))
				FUNC33(&sb[idx++], &mask,
								 inner, rx);

			if (FUNC1(mask.outer, mask.misc, outer))
				FUNC40(&sb[idx++], &mask,
							    inner, rx);
		} else {
			if (FUNC13(&mask.outer))
				FUNC30(&sb[idx++], &mask,
								     inner, rx);

			if (FUNC18(&mask.outer))
				FUNC31(&sb[idx++], &mask,
								  inner, rx);
		}

		if (FUNC10(&mask.misc3) &&
		    FUNC20(dmn))
			FUNC37(&sb[idx++], &mask,
							 inner, rx);

		if (FUNC0(mask.misc3, outer))
			FUNC34(&sb[idx++], &mask, inner, rx);

		if (FUNC2(mask.misc2, outer))
			FUNC41(&sb[idx++], &mask, inner, rx);

		if (FUNC3(mask.misc2))
			FUNC35(&sb[idx++], &mask,
						       inner, rx);

		misc3 = &mask.misc3;
		if ((FUNC4(misc3) &&
		     FUNC23(&dmn->info.caps)) ||
		    (FUNC9(&mask.misc3) &&
		     FUNC24(&dmn->info.caps))) {
			ret = FUNC36(&sb[idx++],
							     &mask, &dmn->info.caps,
							     inner, rx);
			if (ret)
				return ret;
		}
		if (FUNC11(&mask.misc))
			FUNC39(&sb[idx++], &mask, inner, rx);
	}

	/* Inner */
	if (matcher->match_criteria & (DR_MATCHER_CRITERIA_INNER |
				       DR_MATCHER_CRITERIA_MISC |
				       DR_MATCHER_CRITERIA_MISC2 |
				       DR_MATCHER_CRITERIA_MISC3)) {
		inner = true;

		if (FUNC8(&mask.misc))
			FUNC29(&sb[idx++], &mask, inner, rx);

		if (FUNC16(&mask.inner) &&
		    FUNC6(&mask.inner)) {
			ret = FUNC28(&sb[idx++],
							      &mask, inner, rx);
			if (ret)
				return ret;
		}

		if (FUNC16(&mask.inner))
			FUNC27(&sb[idx++], &mask, inner, rx);

		if (FUNC5(mask.inner, mask.misc, inner))
			FUNC26(&sb[idx++], &mask, inner, rx);

		if (ipv6) {
			if (FUNC7(&mask.inner))
				FUNC32(&sb[idx++], &mask,
								 inner, rx);

			if (FUNC17(&mask.inner))
				FUNC33(&sb[idx++], &mask,
								 inner, rx);

			if (FUNC1(mask.inner, mask.misc, inner))
				FUNC40(&sb[idx++], &mask,
							    inner, rx);
		} else {
			if (FUNC13(&mask.inner))
				FUNC30(&sb[idx++], &mask,
								     inner, rx);

			if (FUNC18(&mask.inner))
				FUNC31(&sb[idx++], &mask,
								  inner, rx);
		}

		if (FUNC0(mask.misc3, inner))
			FUNC34(&sb[idx++], &mask, inner, rx);

		if (FUNC2(mask.misc2, inner))
			FUNC41(&sb[idx++], &mask, inner, rx);

		if (FUNC3(mask.misc2))
			FUNC35(&sb[idx++], &mask, inner, rx);
	}
	/* Empty matcher, takes all */
	if (matcher->match_criteria == DR_MATCHER_CRITERIA_EMPTY)
		FUNC25(&sb[idx++], rx);

	if (idx == 0) {
		FUNC21(dmn, "Cannot generate any valid rules from mask\n");
		return -EINVAL;
	}

	/* Check that all mask fields were consumed */
	for (i = 0; i < sizeof(struct mlx5dr_match_param); i++) {
		if (((u8 *)&mask)[i] != 0) {
			FUNC22(dmn, "Mask contains unsupported parameters\n");
			return -EOPNOTSUPP;
		}
	}

	*num_of_builders = idx;

	return 0;
}