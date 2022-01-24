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
struct TYPE_2__ {int is_first; } ;
struct mlxsw_afa_set {int ref_count; TYPE_1__ ht_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLXSW_AFA_SET_GOTO_BINDING_CMD_TERM ; 
 struct mlxsw_afa_set* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_afa_set*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlxsw_afa_set *FUNC2(bool is_first)
{
	struct mlxsw_afa_set *set;

	set = FUNC0(sizeof(*set), GFP_KERNEL);
	if (!set)
		return NULL;
	/* Need to initialize the set to pass by default */
	FUNC1(set, MLXSW_AFA_SET_GOTO_BINDING_CMD_TERM, 0);
	set->ht_key.is_first = is_first;
	set->ref_count = 1;
	return set;
}