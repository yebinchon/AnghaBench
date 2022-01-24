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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MAX_LAG_MEMBERS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct mlxsw_sp *mlxsw_sp,
				       u16 lag_id, u8 *p_port_index)
{
	u64 max_lag_members;
	int i;

	max_lag_members = FUNC0(mlxsw_sp->core,
					     MAX_LAG_MEMBERS);
	for (i = 0; i < max_lag_members; i++) {
		if (!FUNC1(mlxsw_sp, lag_id, i)) {
			*p_port_index = i;
			return 0;
		}
	}
	return -EBUSY;
}