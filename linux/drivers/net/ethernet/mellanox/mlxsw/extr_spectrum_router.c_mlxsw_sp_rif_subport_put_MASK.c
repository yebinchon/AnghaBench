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
struct mlxsw_sp_rif_subport {int /*<<< orphan*/  ref_count; } ;
struct mlxsw_sp_rif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_rif*) ; 
 struct mlxsw_sp_rif_subport* FUNC1 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_sp_rif *rif)
{
	struct mlxsw_sp_rif_subport *rif_subport;

	rif_subport = FUNC1(rif);
	if (!FUNC2(&rif_subport->ref_count))
		return;

	FUNC0(rif);
}