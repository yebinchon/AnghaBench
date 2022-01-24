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
struct udp_tunnel_info {scalar_t__ port; scalar_t__ type; scalar_t__ sa_family; } ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {scalar_t__ vxlan_port; int /*<<< orphan*/  vxlan_del_task; TYPE_1__* mdev; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_6__ {scalar_t__ tunnel_offload_mode; } ;
struct TYPE_5__ {TYPE_3__ caps; } ;
struct TYPE_4__ {int /*<<< orphan*/  workqueue; TYPE_2__* dev; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  DRV ; 
 scalar_t__ MLX4_TUNNEL_OFFLOAD_MODE_VXLAN ; 
 scalar_t__ UDP_TUNNEL_TYPE_VXLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int /*<<< orphan*/ ) ; 
 struct mlx4_en_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct  net_device *dev,
				   struct udp_tunnel_info *ti)
{
	struct mlx4_en_priv *priv = FUNC1(dev);
	__be16 port = ti->port;
	__be16 current_port;

	if (ti->type != UDP_TUNNEL_TYPE_VXLAN)
		return;

	if (ti->sa_family != AF_INET)
		return;

	if (priv->mdev->dev->caps.tunnel_offload_mode != MLX4_TUNNEL_OFFLOAD_MODE_VXLAN)
		return;

	current_port = priv->vxlan_port;
	if (current_port != port) {
		FUNC0(DRV, priv, "vxlan port %d isn't configured, ignoring\n", FUNC2(port));
		return;
	}

	FUNC3(priv->mdev->workqueue, &priv->vxlan_del_task);
}