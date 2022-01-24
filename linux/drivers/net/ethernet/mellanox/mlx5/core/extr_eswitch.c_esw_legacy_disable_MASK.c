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
struct esw_mc_addr {scalar_t__ uplink_rule; } ;
struct mlx5_eswitch {struct esw_mc_addr mc_promisc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_eswitch*) ; 

__attribute__((used)) static void FUNC3(struct mlx5_eswitch *esw)
{
	struct esw_mc_addr *mc_promisc;

	FUNC2(esw);

	mc_promisc = &esw->mc_promisc;
	if (mc_promisc->uplink_rule)
		FUNC1(mc_promisc->uplink_rule);

	FUNC0(esw);
}