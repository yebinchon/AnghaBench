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
typedef  int /*<<< orphan*/  u32 ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_KVDL_ENTRY_TYPE_PBS ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void *priv, u32 kvdl_index)
{
	struct mlxsw_sp *mlxsw_sp = priv;

	FUNC0(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_PBS,
			   1, kvdl_index);
}