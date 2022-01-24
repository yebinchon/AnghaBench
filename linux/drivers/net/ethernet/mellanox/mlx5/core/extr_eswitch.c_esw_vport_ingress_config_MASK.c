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
struct TYPE_5__ {int /*<<< orphan*/ * drop_rule; int /*<<< orphan*/  acl; int /*<<< orphan*/ * allow_rule; struct mlx5_fc* drop_counter; } ;
struct TYPE_4__ {int /*<<< orphan*/  mac; scalar_t__ spoofchk; scalar_t__ qos; scalar_t__ vlan; } ;
struct mlx5_vport {TYPE_2__ ingress; int /*<<< orphan*/  vport; TYPE_1__ info; } ;
struct mlx5_flow_spec {int /*<<< orphan*/  match_criteria_enable; int /*<<< orphan*/  match_value; int /*<<< orphan*/  match_criteria; } ;
struct mlx5_flow_destination {int /*<<< orphan*/  counter_id; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
struct mlx5_flow_act {int /*<<< orphan*/  action; int /*<<< orphan*/  member_0; } ;
struct mlx5_fc {int dummy; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  smac_47_16; int /*<<< orphan*/  smac_15_0; int /*<<< orphan*/  cvlan_tag; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_FLOW_CONTEXT_ACTION_ALLOW ; 
 int /*<<< orphan*/  MLX5_FLOW_CONTEXT_ACTION_COUNT ; 
 int /*<<< orphan*/  MLX5_FLOW_CONTEXT_ACTION_DROP ; 
 int /*<<< orphan*/  MLX5_FLOW_DESTINATION_TYPE_COUNTER ; 
 int /*<<< orphan*/  MLX5_MATCH_OUTER_HEADERS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int FUNC7 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_flow_spec*) ; 
 struct mlx5_flow_spec* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_flow_spec*,int /*<<< orphan*/ ,int) ; 
 void* FUNC13 (int /*<<< orphan*/ ,struct mlx5_flow_spec*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx5_fc*) ; 
 TYPE_3__ outer_headers ; 

__attribute__((used)) static int FUNC16(struct mlx5_eswitch *esw,
				    struct mlx5_vport *vport)
{
	struct mlx5_fc *counter = vport->ingress.drop_counter;
	struct mlx5_flow_destination drop_ctr_dst = {0};
	struct mlx5_flow_destination *dst = NULL;
	struct mlx5_flow_act flow_act = {0};
	struct mlx5_flow_spec *spec;
	int dest_num = 0;
	int err = 0;
	u8 *smac_v;

	FUNC5(esw, vport);

	if (!vport->info.vlan && !vport->info.qos && !vport->info.spoofchk) {
		FUNC6(esw, vport);
		return 0;
	}

	err = FUNC7(esw, vport);
	if (err) {
		FUNC14(esw->dev,
			       "failed to enable ingress acl (%d) on vport[%d]\n",
			       err, vport->vport);
		return err;
	}

	FUNC4(esw->dev,
		  "vport[%d] configure ingress rules, vlan(%d) qos(%d)\n",
		  vport->vport, vport->info.vlan, vport->info.qos);

	spec = FUNC11(sizeof(*spec), GFP_KERNEL);
	if (!spec) {
		err = -ENOMEM;
		goto out;
	}

	if (vport->info.vlan || vport->info.qos)
		FUNC2(fte_match_param, spec->match_criteria, outer_headers.cvlan_tag);

	if (vport->info.spoofchk) {
		FUNC2(fte_match_param, spec->match_criteria, outer_headers.smac_47_16);
		FUNC2(fte_match_param, spec->match_criteria, outer_headers.smac_15_0);
		smac_v = FUNC1(fte_match_param,
				      spec->match_value,
				      outer_headers.smac_47_16);
		FUNC9(smac_v, vport->info.mac);
	}

	spec->match_criteria_enable = MLX5_MATCH_OUTER_HEADERS;
	flow_act.action = MLX5_FLOW_CONTEXT_ACTION_ALLOW;
	vport->ingress.allow_rule =
		FUNC13(vport->ingress.acl, spec,
				    &flow_act, NULL, 0);
	if (FUNC0(vport->ingress.allow_rule)) {
		err = FUNC3(vport->ingress.allow_rule);
		FUNC8(esw->dev,
			 "vport[%d] configure ingress allow rule, err(%d)\n",
			 vport->vport, err);
		vport->ingress.allow_rule = NULL;
		goto out;
	}

	FUNC12(spec, 0, sizeof(*spec));
	flow_act.action = MLX5_FLOW_CONTEXT_ACTION_DROP;

	/* Attach drop flow counter */
	if (counter) {
		flow_act.action |= MLX5_FLOW_CONTEXT_ACTION_COUNT;
		drop_ctr_dst.type = MLX5_FLOW_DESTINATION_TYPE_COUNTER;
		drop_ctr_dst.counter_id = FUNC15(counter);
		dst = &drop_ctr_dst;
		dest_num++;
	}
	vport->ingress.drop_rule =
		FUNC13(vport->ingress.acl, spec,
				    &flow_act, dst, dest_num);
	if (FUNC0(vport->ingress.drop_rule)) {
		err = FUNC3(vport->ingress.drop_rule);
		FUNC8(esw->dev,
			 "vport[%d] configure ingress drop rule, err(%d)\n",
			 vport->vport, err);
		vport->ingress.drop_rule = NULL;
		goto out;
	}

out:
	if (err)
		FUNC5(esw, vport);
	FUNC10(spec);
	return err;
}