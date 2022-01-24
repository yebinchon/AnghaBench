#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct mlx5_esw_flow_attr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  prio; int /*<<< orphan*/  proto; int /*<<< orphan*/  vid; } ;
struct flow_action_entry {TYPE_1__ vlan; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLOW_ACTION_VLAN_PUSH ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int FUNC4 (struct mlx5e_priv*,struct flow_action_entry*,struct mlx5_esw_flow_attr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct mlx5e_priv *priv,
				struct mlx5_esw_flow_attr *attr,
				struct net_device **out_dev,
				u32 *action)
{
	struct net_device *vlan_dev = *out_dev;
	struct flow_action_entry vlan_act = {
		.id = FLOW_ACTION_VLAN_PUSH,
		.vlan.vid = FUNC5(vlan_dev),
		.vlan.proto = FUNC6(vlan_dev),
		.vlan.prio = 0,
	};
	int err;

	err = FUNC4(priv, &vlan_act, attr, action);
	if (err)
		return err;

	*out_dev = FUNC0(FUNC2(vlan_dev),
					FUNC1(vlan_dev));
	if (FUNC3(*out_dev))
		err = FUNC7(priv, attr, out_dev, action);

	return err;
}