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
struct sched_table {unsigned int sched_size; TYPE_1__* tab; } ;
struct sched_class {int dummy; } ;
struct TYPE_2__ {unsigned int idx; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  queue_list; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCHED_STATE_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sched_table* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sched_table*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  tab ; 

struct sched_table *FUNC5(unsigned int sched_size)
{
	struct sched_table *s;
	unsigned int i;

	s = FUNC2(FUNC4(s, tab, sched_size), GFP_KERNEL);
	if (!s)
		return NULL;

	s->sched_size = sched_size;

	for (i = 0; i < s->sched_size; i++) {
		FUNC3(&s->tab[i], 0, sizeof(struct sched_class));
		s->tab[i].idx = i;
		s->tab[i].state = SCHED_STATE_UNUSED;
		FUNC0(&s->tab[i].queue_list);
		FUNC1(&s->tab[i].refcnt, 0);
	}
	return s;
}