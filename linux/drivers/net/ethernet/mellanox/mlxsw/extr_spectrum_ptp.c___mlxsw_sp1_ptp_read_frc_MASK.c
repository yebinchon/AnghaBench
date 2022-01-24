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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct ptp_system_timestamp {int dummy; } ;
struct mlxsw_sp_ptp_clock {struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_core*) ; 
 scalar_t__ FUNC1 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC2 (struct ptp_system_timestamp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ptp_system_timestamp*) ; 

__attribute__((used)) static u64 FUNC4(struct mlxsw_sp_ptp_clock *clock,
				    struct ptp_system_timestamp *sts)
{
	struct mlxsw_core *mlxsw_core = clock->core;
	u32 frc_h1, frc_h2, frc_l;

	frc_h1 = FUNC0(mlxsw_core);
	FUNC3(sts);
	frc_l = FUNC1(mlxsw_core);
	FUNC2(sts);
	frc_h2 = FUNC0(mlxsw_core);

	if (frc_h1 != frc_h2) {
		/* wrap around */
		FUNC3(sts);
		frc_l = FUNC1(mlxsw_core);
		FUNC2(sts);
	}

	return (u64) frc_l | (u64) frc_h2 << 32;
}