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
struct smt_data {unsigned int smt_size; TYPE_1__* smtab; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int idx; scalar_t__ refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  src_mac; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int SMT_SIZE ; 
 int /*<<< orphan*/  SMT_STATE_UNUSED ; 
 struct smt_data* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smtab ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct smt_data*,int /*<<< orphan*/ ,unsigned int) ; 

struct smt_data *FUNC5(void)
{
	unsigned int smt_size;
	struct smt_data *s;
	int i;

	smt_size = SMT_SIZE;

	s = FUNC0(FUNC4(s, smtab, smt_size), GFP_KERNEL);
	if (!s)
		return NULL;
	s->smt_size = smt_size;
	FUNC2(&s->lock);
	for (i = 0; i < s->smt_size; ++i) {
		s->smtab[i].idx = i;
		s->smtab[i].state = SMT_STATE_UNUSED;
		FUNC1(&s->smtab[i].src_mac, 0, ETH_ALEN);
		FUNC3(&s->smtab[i].lock);
		s->smtab[i].refcnt = 0;
	}
	return s;
}