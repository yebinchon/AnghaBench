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
struct net_device {int dummy; } ;
struct TYPE_3__ {int num_channels; int num_tc; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct mlx5e_priv {TYPE_2__ channels; } ;

/* Variables and functions */
 struct mlx5e_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev)
{
	struct mlx5e_priv *priv = FUNC0(netdev);
	int nch = priv->channels.params.num_channels;
	int ntc = priv->channels.params.num_tc;
	int tc;

	FUNC1(netdev);

	if (ntc == 1)
		return;

	FUNC2(netdev, ntc);

	/* Map netdev TCs to offset 0
	 * We have our own UP to TXQ mapping for QoS
	 */
	for (tc = 0; tc < ntc; tc++)
		FUNC3(netdev, tc, nch, 0);
}