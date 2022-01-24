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
typedef  size_t u8 ;
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; scalar_t__ len; } ;
struct mlxsw_sx_port_pcpu_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct mlxsw_sx_port {int /*<<< orphan*/  pcpu_stats; int /*<<< orphan*/  dev; } ;
struct mlxsw_sx {TYPE_1__* bus_info; struct mlxsw_sx_port** ports; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct mlxsw_sx_port_pcpu_stats* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct sk_buff *skb, u8 local_port,
				      void *priv)
{
	struct mlxsw_sx *mlxsw_sx = priv;
	struct mlxsw_sx_port *mlxsw_sx_port = mlxsw_sx->ports[local_port];
	struct mlxsw_sx_port_pcpu_stats *pcpu_stats;

	if (FUNC6(!mlxsw_sx_port)) {
		FUNC0(mlxsw_sx->bus_info->dev, "Port %d: skb received for non-existent port\n",
				     local_port);
		return;
	}

	skb->dev = mlxsw_sx_port->dev;

	pcpu_stats = FUNC3(mlxsw_sx_port->pcpu_stats);
	FUNC4(&pcpu_stats->syncp);
	pcpu_stats->rx_packets++;
	pcpu_stats->rx_bytes += skb->len;
	FUNC5(&pcpu_stats->syncp);

	skb->protocol = FUNC1(skb, skb->dev);
	FUNC2(skb);
}