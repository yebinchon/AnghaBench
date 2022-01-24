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
struct mlxsw_sp_rif {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  __mlxsw_sp_rif_macvlan_flush ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mlxsw_sp_rif *rif)
{
	if (!FUNC2(rif->dev))
		return 0;

	FUNC1(rif->dev, "Router interface is deleted. Upper macvlans will not work\n");
	return FUNC0(rif->dev,
					     __mlxsw_sp_rif_macvlan_flush, rif);
}