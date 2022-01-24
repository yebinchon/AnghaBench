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
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_TNQCR_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tnqcr ; 

__attribute__((used)) static int FUNC3(struct mlxsw_sp *mlxsw_sp)
{
	char tnqcr_pl[MLXSW_REG_TNQCR_LEN];

	FUNC1(tnqcr_pl);
	return FUNC2(mlxsw_sp->core, FUNC0(tnqcr), tnqcr_pl);
}