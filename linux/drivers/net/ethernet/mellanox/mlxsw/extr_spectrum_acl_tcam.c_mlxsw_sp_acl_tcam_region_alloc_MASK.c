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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_acl_tcam_region {int /*<<< orphan*/  tcam_region_info; int /*<<< orphan*/  id; int /*<<< orphan*/  key_type; struct mlxsw_afk_key_info* key_info; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct mlxsw_afk_key_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PTAR_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_PTAR_OP_ALLOC ; 
 int /*<<< orphan*/  MLXSW_SP_ACL_TCAM_REGION_BASE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_afk_key_info*,int) ; 
 unsigned int FUNC2 (struct mlxsw_afk_key_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ptar ; 

__attribute__((used)) static int
FUNC7(struct mlxsw_sp *mlxsw_sp,
			       struct mlxsw_sp_acl_tcam_region *region)
{
	struct mlxsw_afk_key_info *key_info = region->key_info;
	char ptar_pl[MLXSW_REG_PTAR_LEN];
	unsigned int encodings_count;
	int i;
	int err;

	FUNC4(ptar_pl, MLXSW_REG_PTAR_OP_ALLOC,
			    region->key_type,
			    MLXSW_SP_ACL_TCAM_REGION_BASE_COUNT,
			    region->id, region->tcam_region_info);
	encodings_count = FUNC2(key_info);
	for (i = 0; i < encodings_count; i++) {
		u16 encoding;

		encoding = FUNC1(key_info, i);
		FUNC3(ptar_pl, i, encoding);
	}
	err = FUNC6(mlxsw_sp->core, FUNC0(ptar), ptar_pl);
	if (err)
		return err;
	FUNC5(ptar_pl, region->tcam_region_info);
	return 0;
}