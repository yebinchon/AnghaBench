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
struct vmballoon {TYPE_1__* stats; } ;
typedef  enum vmballoon_op_stat_type { ____Placeholder_vmballoon_op_stat_type } vmballoon_op_stat_type ;
struct TYPE_2__ {int /*<<< orphan*/ ** ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct vmballoon *b, unsigned int op,
					  enum vmballoon_op_stat_type type)
{
	if (FUNC1())
		FUNC0(&b->stats->ops[op][type]);
}