#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  version; } ;
struct mlx5_flow_table {TYPE_1__ node; } ;
struct mlx5_flow_steering {int /*<<< orphan*/  ftes_cache; } ;
struct mlx5_flow_spec {int dummy; } ;
struct mlx5_flow_handle {TYPE_1__ node; } ;
struct mlx5_flow_group {TYPE_1__ node; } ;
struct mlx5_flow_destination {int dummy; } ;
struct mlx5_flow_act {int /*<<< orphan*/  action; } ;
struct match_list_head {int /*<<< orphan*/  list; } ;
struct fs_fte {TYPE_1__ node; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOENT ; 
 struct mlx5_flow_handle* FUNC0 (struct mlx5_flow_handle*) ; 
 struct mlx5_flow_handle* FUNC1 (int) ; 
 int /*<<< orphan*/  FS_LOCK_CHILD ; 
 int /*<<< orphan*/  FS_LOCK_GRANDPARENT ; 
 int /*<<< orphan*/  FS_LOCK_PARENT ; 
 scalar_t__ FUNC2 (struct mlx5_flow_handle*) ; 
 int FUNC3 (struct mlx5_flow_handle*) ; 
 struct mlx5_flow_handle* FUNC4 (struct mlx5_flow_handle*,struct mlx5_flow_spec const*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int,struct mlx5_flow_handle*) ; 
 struct mlx5_flow_handle* FUNC5 (struct mlx5_flow_table*,struct mlx5_flow_spec const*) ; 
 struct mlx5_flow_handle* FUNC6 (struct mlx5_flow_table*,struct mlx5_flow_spec const*,struct mlx5_flow_act*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct match_list_head*,struct mlx5_flow_table*,struct mlx5_flow_spec const*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_flow_spec const*) ; 
 int FUNC10 (struct mlx5_flow_table*,struct mlx5_flow_handle*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_flow_destination*,int /*<<< orphan*/ ,struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC12 (struct match_list_head*) ; 
 struct mlx5_flow_steering* FUNC13 (TYPE_1__*) ; 
 int FUNC14 (struct mlx5_flow_handle*,struct mlx5_flow_handle*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct mlx5_flow_handle*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int) ; 
 struct mlx5_flow_handle* FUNC19 (struct mlx5_flow_table*,int /*<<< orphan*/ *,struct mlx5_flow_spec const*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int) ; 

__attribute__((used)) static struct mlx5_flow_handle *
FUNC22(struct mlx5_flow_table *ft,
		     const struct mlx5_flow_spec *spec,
		     struct mlx5_flow_act *flow_act,
		     struct mlx5_flow_destination *dest,
		     int dest_num)

{
	struct mlx5_flow_steering *steering = FUNC13(&ft->node);
	struct mlx5_flow_group *g;
	struct mlx5_flow_handle *rule;
	struct match_list_head match_head;
	bool take_write = false;
	struct fs_fte *fte;
	int version;
	int err;
	int i;

	if (!FUNC9(spec))
		return FUNC1(-EINVAL);

	for (i = 0; i < dest_num; i++) {
		if (!FUNC11(&dest[i], flow_act->action, ft))
			return FUNC1(-EINVAL);
	}
	FUNC16(&ft->node, FS_LOCK_GRANDPARENT);
search_again_locked:
	version = FUNC7(&ft->node.version);

	/* Collect all fgs which has a matching match_criteria */
	err = FUNC8(&match_head, ft, spec);
	if (err) {
		if (take_write)
			FUNC21(&ft->node, false);
		else
			FUNC20(&ft->node);
		return FUNC1(err);
	}

	if (!take_write)
		FUNC20(&ft->node);

	rule = FUNC19(ft, &match_head.list, spec, flow_act, dest,
				      dest_num, version);
	FUNC12(&match_head);
	if (!FUNC2(rule) ||
	    (FUNC3(rule) != -ENOENT && FUNC3(rule) != -EAGAIN)) {
		if (take_write)
			FUNC21(&ft->node, false);
		return rule;
	}

	if (!take_write) {
		FUNC17(&ft->node, FS_LOCK_GRANDPARENT);
		take_write = true;
	}

	if (FUNC3(rule) == -EAGAIN ||
	    version != FUNC7(&ft->node.version))
		goto search_again_locked;

	g = FUNC5(ft, spec);
	if (FUNC2(g)) {
		rule = FUNC0(g);
		FUNC21(&ft->node, false);
		return rule;
	}

	FUNC17(&g->node, FS_LOCK_PARENT);
	FUNC21(&ft->node, false);

	err = FUNC10(ft, g);
	if (err)
		goto err_release_fg;

	fte = FUNC6(ft, spec, flow_act);
	if (FUNC2(fte)) {
		err = FUNC3(fte);
		goto err_release_fg;
	}

	err = FUNC14(g, fte);
	if (err) {
		FUNC15(steering->ftes_cache, fte);
		goto err_release_fg;
	}

	FUNC17(&fte->node, FS_LOCK_CHILD);
	FUNC21(&g->node, false);
	rule = FUNC4(g, spec, flow_act, dest, dest_num, fte);
	FUNC21(&fte->node, false);
	FUNC18(&fte->node, false);
	FUNC18(&g->node, false);
	return rule;

err_release_fg:
	FUNC21(&g->node, false);
	FUNC18(&g->node, false);
	return FUNC1(err);
}