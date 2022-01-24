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
struct mlxsw_afk_key_info {int ref_count; int /*<<< orphan*/  list; } ;
struct mlxsw_afk_element_usage {int dummy; } ;
struct mlxsw_afk {int /*<<< orphan*/  key_info_list; int /*<<< orphan*/  max_blocks; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_afk_key_info* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  blocks ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_afk_key_info*) ; 
 struct mlxsw_afk_key_info* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlxsw_afk*,struct mlxsw_afk_key_info*,struct mlxsw_afk_element_usage*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_afk_key_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlxsw_afk_key_info *
FUNC6(struct mlxsw_afk *mlxsw_afk,
			  struct mlxsw_afk_element_usage *elusage)
{
	struct mlxsw_afk_key_info *key_info;
	int err;

	key_info = FUNC2(FUNC5(key_info, blocks, mlxsw_afk->max_blocks),
			   GFP_KERNEL);
	if (!key_info)
		return FUNC0(-ENOMEM);
	err = FUNC4(mlxsw_afk, key_info, elusage);
	if (err)
		goto err_picker;
	FUNC3(&key_info->list, &mlxsw_afk->key_info_list);
	key_info->ref_count = 1;
	return key_info;

err_picker:
	FUNC1(key_info);
	return FUNC0(err);
}