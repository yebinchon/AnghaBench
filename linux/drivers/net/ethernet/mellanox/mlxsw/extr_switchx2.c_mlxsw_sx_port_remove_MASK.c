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
typedef  int /*<<< orphan*/  u8 ;
struct mlxsw_sx {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mlxsw_sx *mlxsw_sx, u8 local_port)
{
	FUNC0(mlxsw_sx, local_port);
	FUNC1(mlxsw_sx->core, local_port);
}