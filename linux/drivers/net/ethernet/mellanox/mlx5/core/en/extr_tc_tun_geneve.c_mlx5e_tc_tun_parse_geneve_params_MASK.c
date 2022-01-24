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
struct netlink_ext_ack {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; int /*<<< orphan*/  netdev; } ;
struct mlx5_flow_spec {int /*<<< orphan*/  match_value; int /*<<< orphan*/  match_criteria; } ;
struct TYPE_3__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
struct TYPE_4__ {int /*<<< orphan*/  outer_geneve_protocol_type; int /*<<< orphan*/  outer_geneve_oam; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_TEB ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct netlink_ext_ack*,char*) ; 
 TYPE_2__ ft_field_support ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  fte_match_set_misc ; 
 int /*<<< orphan*/  geneve_oam ; 
 int /*<<< orphan*/  geneve_protocol_type ; 
 int /*<<< orphan*/  misc_parameters ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct mlx5e_priv *priv,
					    struct mlx5_flow_spec *spec,
					    struct flow_cls_offload *f)
{
	void *misc_c = FUNC0(fte_match_param, spec->match_criteria, misc_parameters);
	void *misc_v = FUNC0(fte_match_param, spec->match_value,  misc_parameters);
	struct netlink_ext_ack *extack = f->common.extack;

	/* match on OAM - packets with OAM bit on should NOT be offloaded */

	if (!FUNC1(priv->mdev, ft_field_support.outer_geneve_oam)) {
		FUNC4(extack, "Matching on GENEVE OAM is not supported");
		FUNC5(priv->netdev, "Matching on GENEVE OAM is not supported\n");
		return -EOPNOTSUPP;
	}
	FUNC3(fte_match_set_misc, misc_c, geneve_oam);
	FUNC2(fte_match_set_misc, misc_v, geneve_oam, 0);

	/* Match on GENEVE protocol. We support only Transparent Eth Bridge. */

	if (FUNC1(priv->mdev,
				       ft_field_support.outer_geneve_protocol_type)) {
		FUNC3(fte_match_set_misc, misc_c, geneve_protocol_type);
		FUNC2(fte_match_set_misc, misc_v, geneve_protocol_type, ETH_P_TEB);
	}

	return 0;
}