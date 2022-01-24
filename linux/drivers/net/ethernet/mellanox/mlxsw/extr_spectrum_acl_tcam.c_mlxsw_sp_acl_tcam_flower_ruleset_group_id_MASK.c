#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  group; } ;
struct mlxsw_sp_acl_tcam_flower_ruleset {TYPE_1__ vgroup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16
FUNC1(void *ruleset_priv)
{
	struct mlxsw_sp_acl_tcam_flower_ruleset *ruleset = ruleset_priv;

	return FUNC0(&ruleset->vgroup.group);
}