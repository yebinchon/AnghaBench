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
typedef  int /*<<< orphan*/  u32 ;
struct devlink_dpipe_value {int value_size; void* value; struct devlink_dpipe_action* action; struct devlink_dpipe_match* match; } ;
struct devlink_dpipe_match {int dummy; } ;
struct devlink_dpipe_entry {int match_values_count; int action_values_count; struct devlink_dpipe_value* action_values; struct devlink_dpipe_value* match_values; } ;
struct devlink_dpipe_action {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct devlink_dpipe_entry *entry,
				       struct devlink_dpipe_value *match_value,
				       struct devlink_dpipe_match *match,
				       struct devlink_dpipe_value *action_value,
				       struct devlink_dpipe_action *action)
{
	entry->match_values = match_value;
	entry->match_values_count = 1;

	entry->action_values = action_value;
	entry->action_values_count = 1;

	match_value->match = match;
	match_value->value_size = sizeof(u32);
	match_value->value = FUNC1(match_value->value_size, GFP_KERNEL);
	if (!match_value->value)
		return -ENOMEM;

	action_value->action = action;
	action_value->value_size = sizeof(u32);
	action_value->value = FUNC1(action_value->value_size, GFP_KERNEL);
	if (!action_value->value)
		goto err_action_alloc;
	return 0;

err_action_alloc:
	FUNC0(match_value->value);
	return -ENOMEM;
}