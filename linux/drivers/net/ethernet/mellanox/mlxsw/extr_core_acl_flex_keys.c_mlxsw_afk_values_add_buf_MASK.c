#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int bytes; } ;
struct mlxsw_item {TYPE_1__ size; } ;
struct TYPE_4__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  key; } ;
struct mlxsw_afk_element_values {int /*<<< orphan*/  elusage; TYPE_2__ storage; } ;
struct mlxsw_afk_element_info {scalar_t__ type; struct mlxsw_item item; } ;
typedef  enum mlxsw_afk_element { ____Placeholder_mlxsw_afk_element } mlxsw_afk_element ;

/* Variables and functions */
 scalar_t__ MLXSW_AFK_ELEMENT_TYPE_BUF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,struct mlxsw_item const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,unsigned int) ; 
 struct mlxsw_afk_element_info* mlxsw_afk_element_infos ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(struct mlxsw_afk_element_values *values,
			      enum mlxsw_afk_element element,
			      const char *key_value, const char *mask_value,
			      unsigned int len)
{
	const struct mlxsw_afk_element_info *elinfo =
				&mlxsw_afk_element_infos[element];
	const struct mlxsw_item *storage_item = &elinfo->item;

	if (!FUNC2(mask_value, 0, len)) /* If mask is zero */
		return;
	if (FUNC0(elinfo->type != MLXSW_AFK_ELEMENT_TYPE_BUF) ||
	    FUNC0(elinfo->item.size.bytes != len))
		return;
	FUNC1(values->storage.key, key_value,
			       storage_item, 0);
	FUNC1(values->storage.mask, mask_value,
			       storage_item, 0);
	FUNC3(&values->elusage, element);
}