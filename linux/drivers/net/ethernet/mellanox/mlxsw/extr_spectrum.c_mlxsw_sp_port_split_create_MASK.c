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
typedef  int u8 ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 unsigned int MLXSW_PORT_MODULE_MAX_WIDTH ; 
 int FUNC0 (struct mlxsw_sp*,int,int,int,int,int) ; 
 scalar_t__ FUNC1 (struct mlxsw_sp*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,int) ; 

__attribute__((used)) static int FUNC3(struct mlxsw_sp *mlxsw_sp, u8 base_port,
				      u8 module, unsigned int count, u8 offset)
{
	u8 width = MLXSW_PORT_MODULE_MAX_WIDTH / count;
	int err, i;

	for (i = 0; i < count; i++) {
		err = FUNC0(mlxsw_sp, base_port + i * offset,
					   true, module, width, i * width);
		if (err)
			goto err_port_create;
	}

	return 0;

err_port_create:
	for (i--; i >= 0; i--)
		if (FUNC1(mlxsw_sp, base_port + i * offset))
			FUNC2(mlxsw_sp, base_port + i * offset);
	return err;
}