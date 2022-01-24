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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct mlxsw_sp_rif {int /*<<< orphan*/  fid; int /*<<< orphan*/  rif_index; } ;
struct mlxsw_sp {int dummy; } ;
struct macvlan_dev {int /*<<< orphan*/  lowerdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mlxsw_sp_rif* FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct macvlan_dev* FUNC4 (struct net_device const*) ; 

void FUNC5(struct mlxsw_sp *mlxsw_sp,
			      const struct net_device *macvlan_dev)
{
	struct macvlan_dev *vlan = FUNC4(macvlan_dev);
	struct mlxsw_sp_rif *rif;

	rif = FUNC2(mlxsw_sp, vlan->lowerdev);
	/* If we do not have a RIF, then we already took care of
	 * removing the macvlan's MAC during RIF deletion.
	 */
	if (!rif)
		return;
	FUNC3(mlxsw_sp, rif->rif_index, macvlan_dev->dev_addr,
			     false);
	FUNC1(mlxsw_sp, macvlan_dev->dev_addr,
			    FUNC0(rif->fid), false);
}