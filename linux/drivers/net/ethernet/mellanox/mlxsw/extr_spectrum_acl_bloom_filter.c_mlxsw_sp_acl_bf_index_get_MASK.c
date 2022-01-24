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
typedef  int /*<<< orphan*/  u8 ;
struct mlxsw_sp_acl_bf {int dummy; } ;
struct mlxsw_sp_acl_atcam_region {int dummy; } ;
struct mlxsw_sp_acl_atcam_entry {int dummy; } ;

/* Variables and functions */
 int MLXSW_BLOOM_KEY_LEN ; 
 unsigned int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_entry*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int
FUNC2(struct mlxsw_sp_acl_bf *bf,
			  struct mlxsw_sp_acl_atcam_region *aregion,
			  struct mlxsw_sp_acl_atcam_entry *aentry)
{
	char bf_key[MLXSW_BLOOM_KEY_LEN];
	u8 bf_size;

	FUNC1(aregion, aentry, bf_key, &bf_size);
	return FUNC0(bf_key, bf_size);
}