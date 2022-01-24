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
struct TYPE_2__ {char* enc_actions; } ;
struct mlxsw_afa_set {TYPE_1__ ht_key; } ;
typedef  enum mlxsw_afa_set_goto_binding_cmd { ____Placeholder_mlxsw_afa_set_goto_binding_cmd } mlxsw_afa_set_goto_binding_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_AFA_SET_TYPE_GOTO ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mlxsw_afa_set *set,
				   enum mlxsw_afa_set_goto_binding_cmd cmd,
				   u16 group_id)
{
	char *actions = set->ht_key.enc_actions;

	FUNC3(actions, MLXSW_AFA_SET_TYPE_GOTO);
	FUNC1(actions, true);
	FUNC0(actions, cmd);
	FUNC2(actions, group_id);
}