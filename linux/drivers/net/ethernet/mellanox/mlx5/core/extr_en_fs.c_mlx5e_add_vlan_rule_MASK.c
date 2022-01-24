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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5e_priv {int dummy; } ;
struct mlx5_flow_spec {int dummy; } ;
typedef  enum mlx5e_vlan_rule_type { ____Placeholder_mlx5e_vlan_rule_type } mlx5e_vlan_rule_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID ; 
 int FUNC0 (struct mlx5e_priv*,int,int /*<<< orphan*/ ,struct mlx5_flow_spec*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_flow_spec*) ; 
 struct mlx5_flow_spec* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 

__attribute__((used)) static int FUNC4(struct mlx5e_priv *priv,
			       enum mlx5e_vlan_rule_type rule_type, u16 vid)
{
	struct mlx5_flow_spec *spec;
	int err = 0;

	spec = FUNC2(sizeof(*spec), GFP_KERNEL);
	if (!spec)
		return -ENOMEM;

	if (rule_type == MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID)
		FUNC3(priv);

	err = FUNC0(priv, rule_type, vid, spec);

	FUNC1(spec);

	return err;
}