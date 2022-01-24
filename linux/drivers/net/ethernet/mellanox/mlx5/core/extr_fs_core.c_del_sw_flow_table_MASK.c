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
struct TYPE_2__ {struct fs_node* parent; } ;
struct mlx5_flow_table {int /*<<< orphan*/  num_ft; TYPE_1__ node; int /*<<< orphan*/  fgs_hash; } ;
struct fs_prio {int /*<<< orphan*/  num_ft; TYPE_1__ node; int /*<<< orphan*/  fgs_hash; } ;
struct fs_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_flow_table*,struct fs_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fs_node *node)
{
	struct mlx5_flow_table *ft;
	struct fs_prio *prio;

	FUNC0(ft, node);

	FUNC2(&ft->fgs_hash);
	FUNC0(prio, ft->node.parent);
	prio->num_ft--;
	FUNC1(ft);
}