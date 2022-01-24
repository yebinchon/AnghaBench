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
struct mlxsw_sp2_mr_tcam {int /*<<< orphan*/  acl_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp2_mr_tcam*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp2_mr_tcam*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *priv)
{
	struct mlxsw_sp2_mr_tcam *mr_tcam = priv;

	FUNC1(mr_tcam);
	FUNC0(mr_tcam);
	FUNC2(mr_tcam->acl_block);
}