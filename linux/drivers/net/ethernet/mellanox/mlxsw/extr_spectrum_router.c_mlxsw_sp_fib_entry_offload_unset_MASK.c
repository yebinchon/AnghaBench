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
struct mlxsw_sp_fib_entry {TYPE_2__* fib_node; } ;
struct TYPE_4__ {TYPE_1__* fib; } ;
struct TYPE_3__ {int proto; } ;

/* Variables and functions */
#define  MLXSW_SP_L3_PROTO_IPV4 129 
#define  MLXSW_SP_L3_PROTO_IPV6 128 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_fib_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_fib_entry*) ; 

__attribute__((used)) static void
FUNC2(struct mlxsw_sp_fib_entry *fib_entry)
{
	switch (fib_entry->fib_node->fib->proto) {
	case MLXSW_SP_L3_PROTO_IPV4:
		FUNC0(fib_entry);
		break;
	case MLXSW_SP_L3_PROTO_IPV6:
		FUNC1(fib_entry);
		break;
	}
}