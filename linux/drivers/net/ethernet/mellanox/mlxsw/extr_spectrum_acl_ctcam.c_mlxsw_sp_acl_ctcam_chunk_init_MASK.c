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
struct mlxsw_sp_acl_ctcam_region {int /*<<< orphan*/  parman; } ;
struct mlxsw_sp_acl_ctcam_chunk {int /*<<< orphan*/  parman_prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

void FUNC1(struct mlxsw_sp_acl_ctcam_region *cregion,
				   struct mlxsw_sp_acl_ctcam_chunk *cchunk,
				   unsigned int priority)
{
	FUNC0(cregion->parman, &cchunk->parman_prio, priority);
}