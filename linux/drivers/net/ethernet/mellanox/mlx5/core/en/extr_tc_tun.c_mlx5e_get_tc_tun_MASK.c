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
struct net_device {int dummy; } ;
struct mlx5e_tc_tunnel {int dummy; } ;

/* Variables and functions */
 struct mlx5e_tc_tunnel geneve_tunnel ; 
 struct mlx5e_tc_tunnel gre_tunnel ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 struct mlx5e_tc_tunnel vxlan_tunnel ; 

struct mlx5e_tc_tunnel *FUNC4(struct net_device *tunnel_dev)
{
	if (FUNC3(tunnel_dev))
		return &vxlan_tunnel;
	else if (FUNC0(tunnel_dev))
		return &geneve_tunnel;
	else if (FUNC1(tunnel_dev) ||
		 FUNC2(tunnel_dev))
		return &gre_tunnel;
	else
		return NULL;
}