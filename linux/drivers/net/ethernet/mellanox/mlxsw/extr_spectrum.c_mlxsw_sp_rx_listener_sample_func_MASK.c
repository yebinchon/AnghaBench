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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct psample_group {int dummy; } ;
struct mlxsw_sp_port {TYPE_3__* sample; TYPE_2__* dev; } ;
struct mlxsw_sp {TYPE_1__* bus_info; struct mlxsw_sp_port** ports; } ;
struct TYPE_6__ {int /*<<< orphan*/  rate; int /*<<< orphan*/  psample_group; int /*<<< orphan*/  trunc_size; scalar_t__ truncate; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct psample_group*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct psample_group* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct sk_buff *skb, u8 local_port,
					     void *priv)
{
	struct mlxsw_sp *mlxsw_sp = priv;
	struct mlxsw_sp_port *mlxsw_sp_port = mlxsw_sp->ports[local_port];
	struct psample_group *psample_group;
	u32 size;

	if (FUNC6(!mlxsw_sp_port)) {
		FUNC1(mlxsw_sp->bus_info->dev, "Port %d: sample skb received for non-existent port\n",
				     local_port);
		goto out;
	}
	if (FUNC6(!mlxsw_sp_port->sample)) {
		FUNC1(mlxsw_sp->bus_info->dev, "Port %d: sample skb received on unsupported port\n",
				     local_port);
		goto out;
	}

	size = mlxsw_sp_port->sample->truncate ?
		  mlxsw_sp_port->sample->trunc_size : skb->len;

	FUNC4();
	psample_group = FUNC3(mlxsw_sp_port->sample->psample_group);
	if (!psample_group)
		goto out_unlock;
	FUNC2(psample_group, skb, size,
			      mlxsw_sp_port->dev->ifindex, 0,
			      mlxsw_sp_port->sample->rate);
out_unlock:
	FUNC5();
out:
	FUNC0(skb);
}