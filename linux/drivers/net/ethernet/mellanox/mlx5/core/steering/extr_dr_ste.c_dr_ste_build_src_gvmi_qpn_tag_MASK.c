#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mlx5dr_ste_build {scalar_t__ vhca_id_valid; struct mlx5dr_domain* dmn; } ;
struct mlx5dr_match_misc {scalar_t__ source_eswitch_owner_vhca_id; scalar_t__ source_port; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc misc; } ;
struct mlx5dr_cmd_caps {scalar_t__ gvmi; } ;
struct TYPE_6__ {struct mlx5dr_cmd_caps caps; } ;
struct mlx5dr_domain {TYPE_3__ info; TYPE_2__* peer_dmn; } ;
struct mlx5dr_cmd_vport_cap {scalar_t__ vport_gvmi; } ;
struct dr_hw_ste_format {int /*<<< orphan*/ * tag; } ;
struct TYPE_4__ {struct mlx5dr_cmd_caps caps; } ;
struct TYPE_5__ {TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5dr_match_misc*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mlx5dr_cmd_vport_cap* FUNC2 (struct mlx5dr_cmd_caps*,scalar_t__) ; 
 int /*<<< orphan*/  source_gvmi ; 
 int /*<<< orphan*/  source_qp ; 
 int /*<<< orphan*/  source_sqn ; 
 int /*<<< orphan*/  src_gvmi_qp ; 
 int /*<<< orphan*/  ste_src_gvmi_qp ; 

__attribute__((used)) static int FUNC3(struct mlx5dr_match_param *value,
					 struct mlx5dr_ste_build *sb,
					 u8 *hw_ste_p)
{
	struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
	struct mlx5dr_match_misc *misc = &value->misc;
	struct mlx5dr_cmd_vport_cap *vport_cap;
	struct mlx5dr_domain *dmn = sb->dmn;
	struct mlx5dr_cmd_caps *caps;
	u8 *tag = hw_ste->tag;

	FUNC0(src_gvmi_qp, tag, source_qp, misc, source_sqn);

	if (sb->vhca_id_valid) {
		/* Find port GVMI based on the eswitch_owner_vhca_id */
		if (misc->source_eswitch_owner_vhca_id == dmn->info.caps.gvmi)
			caps = &dmn->info.caps;
		else if (dmn->peer_dmn && (misc->source_eswitch_owner_vhca_id ==
					   dmn->peer_dmn->info.caps.gvmi))
			caps = &dmn->peer_dmn->info.caps;
		else
			return -EINVAL;
	} else {
		caps = &dmn->info.caps;
	}

	vport_cap = FUNC2(caps, misc->source_port);
	if (!vport_cap)
		return -EINVAL;

	if (vport_cap->vport_gvmi)
		FUNC1(ste_src_gvmi_qp, tag, source_gvmi, vport_cap->vport_gvmi);

	misc->source_eswitch_owner_vhca_id = 0;
	misc->source_port = 0;

	return 0;
}