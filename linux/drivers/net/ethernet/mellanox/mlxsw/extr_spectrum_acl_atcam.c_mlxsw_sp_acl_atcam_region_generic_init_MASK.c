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
struct TYPE_2__ {int /*<<< orphan*/  refcnt; } ;
struct mlxsw_sp_acl_atcam_region_generic {TYPE_1__ dummy_lkey_id; } ;
struct mlxsw_sp_acl_atcam_region {struct mlxsw_sp_acl_atcam_region_generic* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mlxsw_sp_acl_atcam_region_generic* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2(struct mlxsw_sp_acl_atcam_region *aregion)
{
	struct mlxsw_sp_acl_atcam_region_generic *region_generic;

	region_generic = FUNC0(sizeof(*region_generic), GFP_KERNEL);
	if (!region_generic)
		return -ENOMEM;

	FUNC1(&region_generic->dummy_lkey_id.refcnt, 1);
	aregion->priv = region_generic;

	return 0;
}