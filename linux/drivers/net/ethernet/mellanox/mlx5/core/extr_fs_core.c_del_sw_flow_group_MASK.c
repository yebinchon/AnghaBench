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
struct TYPE_3__ {int /*<<< orphan*/  num_groups; scalar_t__ active; } ;
struct TYPE_4__ {struct fs_node* parent; } ;
struct mlx5_flow_table {int /*<<< orphan*/  hash; int /*<<< orphan*/  fgs_hash; TYPE_1__ autogroup; int /*<<< orphan*/  fte_allocator; int /*<<< orphan*/  ftes_hash; TYPE_2__ node; } ;
struct mlx5_flow_steering {int /*<<< orphan*/  fgs_cache; } ;
struct mlx5_flow_group {int /*<<< orphan*/  hash; int /*<<< orphan*/  fgs_hash; TYPE_1__ autogroup; int /*<<< orphan*/  fte_allocator; int /*<<< orphan*/  ftes_hash; TYPE_2__ node; } ;
struct fs_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_flow_table*,struct fs_node*) ; 
 struct mlx5_flow_steering* FUNC2 (struct fs_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  rhash_fg ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct fs_node *node)
{
	struct mlx5_flow_steering *steering = FUNC2(node);
	struct mlx5_flow_group *fg;
	struct mlx5_flow_table *ft;
	int err;

	FUNC1(fg, node);
	FUNC1(ft, fg->node.parent);

	FUNC5(&fg->ftes_hash);
	FUNC3(&fg->fte_allocator);
	if (ft->autogroup.active)
		ft->autogroup.num_groups--;
	err = FUNC6(&ft->fgs_hash,
			      &fg->hash,
			      rhash_fg);
	FUNC0(err);
	FUNC4(steering->fgs_cache, fg);
}