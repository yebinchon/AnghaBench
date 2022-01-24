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
struct mlx5_flow_steering {int /*<<< orphan*/  ftes_cache; } ;
struct TYPE_2__ {struct fs_node* parent; } ;
struct mlx5_flow_group {scalar_t__ start_index; scalar_t__ index; int /*<<< orphan*/  fte_allocator; int /*<<< orphan*/  hash; int /*<<< orphan*/  ftes_hash; TYPE_1__ node; } ;
struct fs_node {int dummy; } ;
struct fs_fte {scalar_t__ start_index; scalar_t__ index; int /*<<< orphan*/  fte_allocator; int /*<<< orphan*/  hash; int /*<<< orphan*/  ftes_hash; TYPE_1__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_flow_group*,struct fs_node*) ; 
 struct mlx5_flow_steering* FUNC2 (struct fs_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mlx5_flow_group*) ; 
 int /*<<< orphan*/  rhash_fte ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct fs_node *node)
{
	struct mlx5_flow_steering *steering = FUNC2(node);
	struct mlx5_flow_group *fg;
	struct fs_fte *fte;
	int err;

	FUNC1(fte, node);
	FUNC1(fg, fte->node.parent);

	err = FUNC5(&fg->ftes_hash,
				     &fte->hash,
				     rhash_fte);
	FUNC0(err);
	FUNC3(&fg->fte_allocator, fte->index - fg->start_index);
	FUNC4(steering->ftes_cache, fte);
}