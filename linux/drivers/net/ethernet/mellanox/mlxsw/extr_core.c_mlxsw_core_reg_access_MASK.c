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
struct mlxsw_reg_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  use_emad; } ;
struct mlxsw_core {TYPE_1__ emad; } ;
typedef  enum mlxsw_core_reg_access_type { ____Placeholder_mlxsw_core_reg_access_type } mlxsw_core_reg_access_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bulk_list ; 
 int /*<<< orphan*/  mlxsw_core_reg_access_cb ; 
 int FUNC1 (struct mlxsw_core*,struct mlxsw_reg_info const*,char*,int) ; 
 int FUNC2 (struct mlxsw_core*,struct mlxsw_reg_info const*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_core *mlxsw_core,
				 const struct mlxsw_reg_info *reg,
				 char *payload,
				 enum mlxsw_core_reg_access_type type)
{
	FUNC0(bulk_list);
	int err;

	/* During initialization EMAD interface is not available to us,
	 * so we default to command interface. We switch to EMAD interface
	 * after setting the appropriate traps.
	 */
	if (!mlxsw_core->emad.use_emad)
		return FUNC1(mlxsw_core, reg,
						 payload, type);

	err = FUNC2(mlxsw_core, reg,
					 payload, type, &bulk_list,
					 mlxsw_core_reg_access_cb,
					 (unsigned long) payload);
	if (err)
		return err;
	return FUNC3(&bulk_list);
}