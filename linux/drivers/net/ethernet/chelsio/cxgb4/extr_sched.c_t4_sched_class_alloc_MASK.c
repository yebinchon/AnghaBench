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
typedef  scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ class; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct ch_sched_params {TYPE_2__ u; } ;
struct sched_class {scalar_t__ idx; int /*<<< orphan*/  state; int /*<<< orphan*/  refcnt; struct ch_sched_params info; } ;
struct port_info {int dummy; } ;
typedef  int /*<<< orphan*/  np ;

/* Variables and functions */
 scalar_t__ SCHED_CLS_NONE ; 
 int /*<<< orphan*/  SCHED_FW_OP_ADD ; 
 int /*<<< orphan*/  SCHED_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ch_sched_params*,struct ch_sched_params*,int) ; 
 int FUNC2 (struct port_info*,struct ch_sched_params*,int /*<<< orphan*/ ) ; 
 struct sched_class* FUNC3 (struct port_info*,struct ch_sched_params*) ; 

__attribute__((used)) static struct sched_class *FUNC4(struct port_info *pi,
						struct ch_sched_params *p)
{
	struct sched_class *e;
	u8 class_id;
	int err;

	if (!p)
		return NULL;

	class_id = p->u.params.class;

	/* Only accept search for existing class with matching params
	 * or allocation of new class with specified params
	 */
	if (class_id != SCHED_CLS_NONE)
		return NULL;

	/* See if there's an exisiting class with same
	 * requested sched params
	 */
	e = FUNC3(pi, p);
	if (!e) {
		struct ch_sched_params np;

		/* Fetch any available unused class */
		e = FUNC3(pi, NULL);
		if (!e)
			return NULL;

		FUNC1(&np, p, sizeof(np));
		np.u.params.class = e->idx;
		/* New class */
		err = FUNC2(pi, &np, SCHED_FW_OP_ADD);
		if (err)
			return NULL;
		FUNC1(&e->info, &np, sizeof(e->info));
		FUNC0(&e->refcnt, 0);
		e->state = SCHED_STATE_ACTIVE;
	}

	return e;
}