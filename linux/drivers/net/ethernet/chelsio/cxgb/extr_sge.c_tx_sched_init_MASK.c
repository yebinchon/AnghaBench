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
struct sge {struct sched* tx_sched; } ;
struct sched {TYPE_1__* p; int /*<<< orphan*/  sched_tsk; } ;
struct TYPE_2__ {int /*<<< orphan*/  skbq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_NPORTS ; 
 struct sched* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  restart_sched ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sge*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct sge *sge)
{
	struct sched *s;
	int i;

	s = FUNC0(sizeof (struct sched), GFP_KERNEL);
	if (!s)
		return -ENOMEM;

	FUNC1("tx_sched_init\n");
	FUNC4(&s->sched_tsk, restart_sched, (unsigned long) sge);
	sge->tx_sched = s;

	for (i = 0; i < MAX_NPORTS; i++) {
		FUNC2(&s->p[i].skbq);
		FUNC3(sge, i, 1500, 1000);
	}

	return 0;
}