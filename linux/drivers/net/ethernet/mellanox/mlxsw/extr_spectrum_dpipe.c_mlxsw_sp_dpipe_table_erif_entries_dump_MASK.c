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
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct devlink_dpipe_value {int dummy; } ;
struct devlink_dpipe_match {int /*<<< orphan*/  member_0; } ;
struct devlink_dpipe_entry {int /*<<< orphan*/  member_0; } ;
struct devlink_dpipe_dump_ctx {int dummy; } ;
struct devlink_dpipe_action {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  match_value ;
typedef  int /*<<< orphan*/  action_value ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  MAX_RIFS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_dpipe_entry*) ; 
 int FUNC2 (struct devlink_dpipe_dump_ctx*,struct devlink_dpipe_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink_dpipe_dump_ctx*) ; 
 int FUNC4 (struct devlink_dpipe_dump_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct devlink_dpipe_value*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct mlxsw_sp*,struct devlink_dpipe_entry*,struct mlxsw_sp_rif*,int) ; 
 int FUNC7 (struct devlink_dpipe_entry*,struct devlink_dpipe_value*,struct devlink_dpipe_match*,struct devlink_dpipe_value*,struct devlink_dpipe_action*) ; 
 int /*<<< orphan*/  FUNC8 (struct devlink_dpipe_match*,struct devlink_dpipe_action*) ; 
 struct mlxsw_sp_rif* FUNC9 (struct mlxsw_sp*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int
FUNC13(void *priv, bool counters_enabled,
				       struct devlink_dpipe_dump_ctx *dump_ctx)
{
	struct devlink_dpipe_value match_value, action_value;
	struct devlink_dpipe_action action = {0};
	struct devlink_dpipe_match match = {0};
	struct devlink_dpipe_entry entry = {0};
	struct mlxsw_sp *mlxsw_sp = priv;
	unsigned int rif_count;
	int i, j;
	int err;

	FUNC5(&match_value, 0, sizeof(match_value));
	FUNC5(&action_value, 0, sizeof(action_value));

	FUNC8(&match, &action);
	err = FUNC7(&entry, &match_value, &match,
					  &action_value, &action);
	if (err)
		return err;

	rif_count = FUNC0(mlxsw_sp->core, MAX_RIFS);
	FUNC11();
	i = 0;
start_again:
	err = FUNC4(dump_ctx);
	if (err)
		return err;
	j = 0;
	for (; i < rif_count; i++) {
		struct mlxsw_sp_rif *rif = FUNC9(mlxsw_sp, i);

		if (!rif || !FUNC10(rif))
			continue;
		err = FUNC6(mlxsw_sp, &entry, rif,
					      counters_enabled);
		if (err)
			goto err_entry_get;
		err = FUNC2(dump_ctx, &entry);
		if (err) {
			if (err == -EMSGSIZE) {
				if (!j)
					goto err_entry_append;
				break;
			}
			goto err_entry_append;
		}
		j++;
	}

	FUNC3(dump_ctx);
	if (i != rif_count)
		goto start_again;
	FUNC12();

	FUNC1(&entry);
	return 0;
err_entry_append:
err_entry_get:
	FUNC12();
	FUNC1(&entry);
	return err;
}