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
struct mlx5_eswitch {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_FDB_TO_VPORT_REG_C_0 ; 
 int /*<<< orphan*/  esw_uplink_ingress_acl ; 
 int /*<<< orphan*/  fdb_to_vport_reg_c_id ; 
 int /*<<< orphan*/  flow_source ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(const struct mlx5_eswitch *esw)
{
	if (!FUNC0(esw->dev, esw_uplink_ingress_acl))
		return false;

	if (!(FUNC1(esw->dev, fdb_to_vport_reg_c_id) &
	      MLX5_FDB_TO_VPORT_REG_C_0))
		return false;

	if (!FUNC1(esw->dev, flow_source))
		return false;

	if (FUNC2(esw->dev) ||
	    FUNC3(esw->dev))
		return false;

	return true;
}