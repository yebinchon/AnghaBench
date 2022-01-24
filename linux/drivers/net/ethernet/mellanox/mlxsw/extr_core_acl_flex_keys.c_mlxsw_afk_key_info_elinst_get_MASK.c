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
struct TYPE_2__ {int /*<<< orphan*/  usage; } ;
struct mlxsw_afk_key_info {int* element_to_block; struct mlxsw_afk_block** blocks; TYPE_1__ elusage; } ;
struct mlxsw_afk_element_inst {int dummy; } ;
struct mlxsw_afk_block {int dummy; } ;
typedef  enum mlxsw_afk_element { ____Placeholder_mlxsw_afk_element } mlxsw_afk_element ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct mlxsw_afk_element_inst* FUNC1 (struct mlxsw_afk_block const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct mlxsw_afk_element_inst *
FUNC3(struct mlxsw_afk_key_info *key_info,
			      enum mlxsw_afk_element element,
			      int *p_block_index)
{
	const struct mlxsw_afk_element_inst *elinst;
	const struct mlxsw_afk_block *block;
	int block_index;

	if (FUNC0(!FUNC2(element, key_info->elusage.usage)))
		return NULL;
	block_index = key_info->element_to_block[element];
	block = key_info->blocks[block_index];

	elinst = FUNC1(block, element);
	if (FUNC0(!elinst))
		return NULL;

	*p_block_index = block_index;
	return elinst;
}