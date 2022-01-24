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
struct TYPE_2__ {unsigned char prefix_len; int /*<<< orphan*/  addr; } ;
struct mlxsw_sp_fib_node {TYPE_1__ key; int /*<<< orphan*/  list; int /*<<< orphan*/  entry_list; } ;
struct mlxsw_sp_fib {int /*<<< orphan*/  node_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_fib_node* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static struct mlxsw_sp_fib_node *
FUNC4(struct mlxsw_sp_fib *fib, const void *addr,
			 size_t addr_len, unsigned char prefix_len)
{
	struct mlxsw_sp_fib_node *fib_node;

	fib_node = FUNC1(sizeof(*fib_node), GFP_KERNEL);
	if (!fib_node)
		return NULL;

	FUNC0(&fib_node->entry_list);
	FUNC2(&fib_node->list, &fib->node_list);
	FUNC3(fib_node->key.addr, addr, addr_len);
	fib_node->key.prefix_len = prefix_len;

	return fib_node;
}