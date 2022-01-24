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
struct mlxsw_sp_rt6 {struct fib6_info* rt; } ;
struct fib6_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mlxsw_sp_rt6* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct fib6_info*) ; 
 struct mlxsw_sp_rt6* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlxsw_sp_rt6 *FUNC3(struct fib6_info *rt)
{
	struct mlxsw_sp_rt6 *mlxsw_sp_rt6;

	mlxsw_sp_rt6 = FUNC2(sizeof(*mlxsw_sp_rt6), GFP_KERNEL);
	if (!mlxsw_sp_rt6)
		return FUNC0(-ENOMEM);

	/* In case of route replace, replaced route is deleted with
	 * no notification. Take reference to prevent accessing freed
	 * memory.
	 */
	mlxsw_sp_rt6->rt = rt;
	FUNC1(rt);

	return mlxsw_sp_rt6;
}