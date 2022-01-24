#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * allowed_vlan; int /*<<< orphan*/  acl; } ;
struct mlx5_vport {TYPE_1__ egress; int /*<<< orphan*/  vport; } ;
struct mlx5_flow_spec {int /*<<< orphan*/  match_criteria_enable; int /*<<< orphan*/  match_value; int /*<<< orphan*/  match_criteria; } ;
struct mlx5_flow_act {int action; int /*<<< orphan*/  member_0; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  first_vid; int /*<<< orphan*/  cvlan_tag; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_FLOW_CONTEXT_ACTION_ALLOW ; 
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_POP ; 
 int /*<<< orphan*/  MLX5_MATCH_OUTER_HEADERS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int FUNC7 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_flow_spec*) ; 
 struct mlx5_flow_spec* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,struct mlx5_flow_spec*,struct mlx5_flow_act*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__ outer_headers ; 
 int /*<<< orphan*/  prio_tag_required ; 

__attribute__((used)) static int FUNC13(struct mlx5_eswitch *esw,
					    struct mlx5_vport *vport)
{
	struct mlx5_flow_act flow_act = {0};
	struct mlx5_flow_spec *spec;
	int err = 0;

	if (!FUNC1(esw->dev, prio_tag_required))
		return 0;

	/* For prio tag mode, there is only 1 FTEs:
	 * 1) prio tag packets - pop the prio tag VLAN, allow
	 * Unmatched traffic is allowed by default
	 */

	FUNC6(esw, vport);

	err = FUNC7(esw, vport);
	if (err) {
		FUNC12(esw->dev,
			       "failed to enable egress acl (%d) on vport[%d]\n",
			       err, vport->vport);
		return err;
	}

	FUNC5(esw->dev,
		  "vport[%d] configure prio tag egress rules\n", vport->vport);

	spec = FUNC10(sizeof(*spec), GFP_KERNEL);
	if (!spec) {
		err = -ENOMEM;
		goto out_no_mem;
	}

	/* prio tag vlan rule - pop it so VF receives untagged packets */
	FUNC3(fte_match_param, spec->match_criteria, outer_headers.cvlan_tag);
	FUNC3(fte_match_param, spec->match_value, outer_headers.cvlan_tag);
	FUNC3(fte_match_param, spec->match_criteria, outer_headers.first_vid);
	FUNC2(fte_match_param, spec->match_value, outer_headers.first_vid, 0);

	spec->match_criteria_enable = MLX5_MATCH_OUTER_HEADERS;
	flow_act.action = MLX5_FLOW_CONTEXT_ACTION_VLAN_POP |
			  MLX5_FLOW_CONTEXT_ACTION_ALLOW;
	vport->egress.allowed_vlan =
		FUNC11(vport->egress.acl, spec,
				    &flow_act, NULL, 0);
	if (FUNC0(vport->egress.allowed_vlan)) {
		err = FUNC4(vport->egress.allowed_vlan);
		FUNC8(esw->dev,
			 "vport[%d] configure egress pop prio tag vlan rule failed, err(%d)\n",
			 vport->vport, err);
		vport->egress.allowed_vlan = NULL;
		goto out;
	}

out:
	FUNC9(spec);
out_no_mem:
	if (err)
		FUNC6(esw, vport);
	return err;
}