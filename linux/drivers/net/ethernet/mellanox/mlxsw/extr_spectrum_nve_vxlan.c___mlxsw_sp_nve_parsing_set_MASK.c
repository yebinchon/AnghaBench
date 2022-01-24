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
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_MPRS_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mprs ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp *mlxsw_sp,
				      unsigned int parsing_depth,
				      __be16 udp_dport)
{
	char mprs_pl[MLXSW_REG_MPRS_LEN];

	FUNC2(mprs_pl, parsing_depth, FUNC1(udp_dport));
	return FUNC3(mlxsw_sp->core, FUNC0(mprs), mprs_pl);
}