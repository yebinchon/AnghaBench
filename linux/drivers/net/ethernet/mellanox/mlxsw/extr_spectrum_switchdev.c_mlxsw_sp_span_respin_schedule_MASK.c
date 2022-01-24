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
struct mlxsw_sp_span_respin_work {int /*<<< orphan*/  work; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_span_respin_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlxsw_sp_span_respin_work ; 

__attribute__((used)) static void FUNC3(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_span_respin_work *respin_work;

	respin_work = FUNC1(sizeof(*respin_work), GFP_ATOMIC);
	if (!respin_work)
		return;

	FUNC0(&respin_work->work, mlxsw_sp_span_respin_work);
	respin_work->mlxsw_sp = mlxsw_sp;

	FUNC2(&respin_work->work);
}